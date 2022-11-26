package com.example.skyland.repository;

import com.example.skyland.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category findByCategoryName(String name);
}
