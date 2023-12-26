package com.example.outgoit.review.camping.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CampingReviewModifyingDTO {
    private int commentNumber; // 코멘트의 고유번호
    private String password; // 비밀번호
    private String content; // 댓글 코멘트의 내용
}
