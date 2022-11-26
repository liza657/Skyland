package com.example.skyland.service;

import com.example.skyland.entity.Category;

import java.util.List;

public interface CategoryService {
    void save (Category category);
    List <Category> findAll();
}
