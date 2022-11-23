package com.example.skyland.controller;

import com.example.skyland.service.TourServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/tour")
public class TourController {
//    @Autowired
//    TourServiceImpl tourService;
//    @Autowired
//    CategoryServiceImpl categoryService;
//    @PostMapping("/addTour")
//    public ResponseEntity<ApiResponse> addTour(@RequestBody TourDto productDto) {
//        Optional<Category> optionalCategory = categoryService.readCategory(productDto.getCategoryId());
//        if (!optionalCategory.isPresent()) {
//            return new ResponseEntity<ApiResponse>(new ApiResponse(false, "category is invalid"), HttpStatus.CONFLICT);
//        }
//        Category category = optionalCategory.get();
//        tourService.addTour(tourDto, category);
//        return new ResponseEntity<>(new ApiResponse(true, "Tour has been added"), HttpStatus.CREATED);
//    }
}
