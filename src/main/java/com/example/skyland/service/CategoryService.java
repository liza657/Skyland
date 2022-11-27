package com.example.skyland.service;

import com.example.skyland.entity.Category;

import java.util.List;
import java.util.Optional;

public interface CategoryService {
    void save (Category category);
    List <Category> findAll();
    Optional<Category> findById(long id);
}
