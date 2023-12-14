package com.example.outgoit.camp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
@RequestMapping("/camping")
public class CampingAreaSearchPageController {
    //////////////////// 의존성 주입 코드 //////////////////////
    // 허락없이 건들면 뒤집니다
    private final CampingSearchService campingSearchService;

    public CampingAreaSearchPageController(CampingSearchService campingSearchService){
        this.campingSearchService = campingSearchService;
    }
    ////////////////////////////////////////////////////////




    }




