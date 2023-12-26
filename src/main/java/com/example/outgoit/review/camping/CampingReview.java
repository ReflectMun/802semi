package com.example.outgoit.review.camping;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.ZoneId;

@Entity(name = "camping_review")
@Getter
@NoArgsConstructor
public class CampingReview { // 이 DTO는 캠핑장 리뷰에 관한 데이터를 담을 DTO임
    @Column(name = "comment_number", nullable = false, unique = true)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long commentNumber; // 리뷰 고유번호

    @Column(nullable = false) // 데이터베이스 테이블의 열, 해당 필드가 데이터베이스에는 반드시 갑이 존재하야함. null값 허용XXX
    private String author; // 작성자 닉네임

    @Column(nullable = false)
    private String password; // 작성 시 입력한 비밀번호

    @Column(nullable = false)
    private String content; // 리뷰 내용

    @Column(nullable = false)
    private Integer rating; // 평점(별점)

    @Column(name = "camping_area_id", nullable = false) // name을 사용해 테이블의 컬럼의 이름과 연동.
    private Integer campingAreaId; // 낙타체 인식이 안되서

    @Column(name = "commented_date", nullable = false)
    private LocalDate commentedDate; // 리뷰를 작성한 날짜

    @PrePersist
    public void prePersist(){
        this.commentedDate = LocalDate.now(ZoneId.of("Asia/Seoul"));
    }

    public CampingReview(
            String author,
            String password,
            String content,
            int rating,
            int campingAreaId
    ){
        this.author = author;
        this.password = password;
        this.content = content;
        this.rating = rating;
        this.campingAreaId = campingAreaId;
    }
}
