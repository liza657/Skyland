package com.example.skyland.repository;

import com.example.skyland.entity.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface TourRepository extends JpaRepository<Tour, Long> {
    Tour findById(long id);
    Tour findByTitle(String title);
    List<Tour> findAllByOrderByIdAsc();
    List<Tour> findAllByCategoryId(long categoryId);
//    List<Tour> filterByPrice(int min,int max);
}
