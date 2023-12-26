package com.example.outgoit.review.camping;

import com.example.outgoit.review.camping.dto.CampingReviewDeleteDTO;
import com.example.outgoit.review.camping.dto.CampingReviewModifyingDTO;
import com.example.outgoit.review.camping.dto.CampingReviewSubmitBodyDTO;
import com.example.outgoit.review.camping.dto.NotificationProcessStatusDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/api/review/camping")
public class CampingReviewApiController {
    //////////////////// 초기화 코드니까 말 없이 건드리지 마시오 /////////////////////////
    private final CampingReviewService campingReviewService;

    public CampingReviewApiController(CampingReviewService campingReviewService){
        this.campingReviewService = campingReviewService;
    }
    ////////////////////////////////////////////////////////////////////////////

    @PostMapping("/submit")  // 결과적을 에레메서지를 전달하여 적절한 응답을 제공하도록 함.ㄴ
    public NotificationProcessStatusDTO submitCampingAreaReview(@RequestBody CampingReviewSubmitBodyDTO body){
        Integer resultCode = null;
        try {
            if(body.getAuthor().isEmpty() || body.getPassword().isEmpty() ||
               body.getContent().isEmpty() || body.getCampingAreaId() == null){
                resultCode = 703;
                throw new Exception("올바르지 않은 값이 전달되었습니다");
            } // 댓글에 아이디, 비번, 내용, 캠핑장 아이디 값이 비어있으면 오류코드 703으로 지정.

            resultCode = campingReviewService.submitReview(
                    body.getAuthor(),
                    body.getPassword(),
                    body.getContent(),
                    body.getRating(),
                    body.getCampingAreaId()
            ); // campingReviewServie(모델)의 값들을 불러와서 Integer형인 resultCode에 담음.

            if(resultCode != 200)
                throw new Exception("리뷰 작성 중 문제가 발생하였습니다");
            // 오류코드 200이 아니면 에러메세지와 함께

            return new NotificationProcessStatusDTO(resultCode, null);
            // 에러메세지 DTO의 필드를 이용해 객체를 만들고, 그 값을 리턴함. (상태코드, 에러메세지 둘다 리턴)

        } catch (Exception e) {
            e.printStackTrace();

            if(resultCode == null)
                resultCode = 700;
            // 값이 비어있을땐 700을 담음.

            return new NotificationProcessStatusDTO(resultCode, e.getMessage());

        }
    }

    @GetMapping("/rating")
    public ArrayList<Object> getCampingAreaRating(Integer campingAreaId){
        return new ArrayList<>(campingReviewService.getCampingAreaRating(campingAreaId));
    }

    @PostMapping("/update")
    public NotificationProcessStatusDTO updateReview(@RequestBody CampingReviewModifyingDTO body){
        return campingReviewService.updateReviewContent(
                body.getPassword(),
                body.getCommentNumber(),
                body.getContent()
        );
    }

    @PostMapping("/delete")
    public NotificationProcessStatusDTO deleteReview(@RequestBody CampingReviewDeleteDTO body){
        return campingReviewService.deleteReview(body.getCommentNumber(), body.getPassword());
    }

    @GetMapping("/list") // 조금 어려움
    public ArrayList<CampingReview> getCampingAreaReviewList(
            @PageableDefault(size = 5, sort = "commentNumber", direction = Sort.Direction.DESC) Pageable pageable,
            Integer campingAreaId,
            Integer pageNumber
    ){
        if (pageNumber == 0) {
            return new ArrayList<>();
        }

        Pageable modified = PageRequest.of(pageNumber - 1, pageable.getPageSize(), pageable.getSort());
        Page<CampingReview> result = campingReviewService.loadCampingAreaReview(campingAreaId, modified);

        if (pageNumber > result.getTotalPages()){
            return new ArrayList<>();
        }

        return new ArrayList<CampingReview>(result.getContent());
    }
}