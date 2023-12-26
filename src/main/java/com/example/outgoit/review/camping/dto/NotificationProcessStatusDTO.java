package com.example.outgoit.review.camping.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
// 에러메세지를 포함하는 DTO
public class NotificationProcessStatusDTO {
    private int statusCode; // 상태코드
    private String errorMessage; // 에러베세지

    public NotificationProcessStatusDTO(int statusCode) {
        this.statusCode = statusCode;
    }
}
