package com.example.outgoit.review.camping.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class CampingReviewSubmitBodyDTO {
    private String author; // 글쓴이
    private String password; // 비번
    private String content; // 내용
    private Integer rating; // 평가
    private Integer campingAreaId; // 특정 캠핑장의 아이디값 (그 캠핑장에 대한 코멘트를 쓰는 거니까.)
}
