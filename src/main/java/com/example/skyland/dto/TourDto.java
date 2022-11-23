package com.example.skyland.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TourDto {
    private Long id;
    private String title;
    private String country;
    private  String imageURL;
    private int numberOfPersons;
    private String typeOfFlight;
    private String typeOfFood;
    private int price;
    private String description;
    private  Long categoryId;
}
