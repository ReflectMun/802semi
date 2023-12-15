package com.example.outgoit.review.camping;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @PostMapping("/submit")
    public boolean submitCampingAreaReview(){
        campingReviewService.submitReview(
                "ButterFlakes",
                "1234",
                "테스트용 리뷰",
                3,
                3397
        );

        return true;
    }

    @PostMapping("/rating")
    public ArrayList<Object> getCampingAreaRating(){
        return new ArrayList<>(campingReviewService.getCampingAreaRating(1));
    }

    @PostMapping("/update")
    public boolean updateReview(){
        campingReviewService.updateReviewContent(
                "하하하하하",
                1
        );

        return true;
    }

    @PostMapping("/delete")
    public boolean deleteReview(){
        campingReviewService.deleteReview(2);
        return true;
    }

    @GetMapping("/list")
    public ArrayList<CampingReview> getCampingAreaReviewList(Integer campingAreaId,Integer page){
        return campingReviewService.loadCampingAreaReview(campingAreaId, page);
    }
}
