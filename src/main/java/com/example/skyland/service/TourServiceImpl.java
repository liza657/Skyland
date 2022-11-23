package com.example.skyland.service;

import com.example.skyland.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourServiceImpl {
    @Autowired
    private TourRepository tourRepository;
}
