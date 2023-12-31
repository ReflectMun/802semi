package com.example.outgoit.camp;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/camping")
public class CampingAreaSearchApiController {
    private final CampingSearchService campingSearchService;

    CampingAreaSearchApiController(CampingSearchService campingSearchService){
        this.campingSearchService = campingSearchService;
    }
    @GetMapping("/search/{campName}")
    public List<CampingAreaInfoDTO> getChampingAreaInfo(@PathVariable String campName){
        return campingSearchService.GetSearchedCampingAreaList(campName);
    }
}
