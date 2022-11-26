package com.example.skyland.service.impl;

import com.example.skyland.entity.Category;
import com.example.skyland.repository.CategoryRepository;
import com.example.skyland.service.CategoryService;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryServiceImpl(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }


    @Override
    public void save(Category category) {
        categoryRepository.save(category);

    }

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }
}
