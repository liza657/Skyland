package com.example.skyland.service;

import com.example.skyland.entity.Tour;

import java.util.List;
import java.util.Optional;

public interface TourService {
    void save(Tour tour);
    void edit(long id, Tour newProduct);
    void delete(long id);
    Tour findById(long id);
    List<Tour> findAllByOrderByIdAsc();
    List<Tour> findAllByCategoryId(long categoryId);
    long count();

}
