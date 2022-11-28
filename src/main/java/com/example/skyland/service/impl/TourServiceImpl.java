package com.example.skyland.service.impl;

import com.example.skyland.entity.Tour;
import com.example.skyland.repository.TourRepository;
import com.example.skyland.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourServiceImpl implements TourService {
    private final TourRepository tourRepository;

    @Autowired
    public TourServiceImpl(TourRepository tourRepository){
        this.tourRepository = tourRepository;
    }

    @Override
    public void save(Tour tour) {
        tourRepository.save(tour);
    }

    @Override
    public void edit(long id, Tour newTour) {
        Tour found = tourRepository.findById(id);
        found.setTitle(newTour.getTitle());
        found.setCountry(newTour.getCountry());
        found.setImageURL1(newTour.getImageURL1());
        found.setImageURL2(newTour.getImageURL2());
        found.setImageURL3(newTour.getImageURL3());
        found.setImageURL4(newTour.getImageURL4());
        found.setDescription(newTour.getDescription());
        found.setNumberOfPersons(newTour.getNumberOfPersons());
        found.setTypeOfFlight(newTour.getTypeOfFlight());
        found.setTypeOfFood(newTour.getTypeOfFood());
        found.setPrice(newTour.getPrice());
        save(newTour);
    }

    @Override
    public void delete(long id) {
        tourRepository.delete(findById(id));

    }

    @Override
    public Tour findById(long id) {
        return tourRepository.findById(id);

    }

    @Override
    public List<Tour> findAllByOrderByIdAsc() {
        return tourRepository.findAllByOrderByIdAsc();
    }

    @Override
    public List<Tour> findAllByCategoryId(long categoryId) {
        return tourRepository.findAllByCategoryId(categoryId);
    }

    @Override
    public long count() {
        return tourRepository.count();
    }

//    @Override
//    public List<Tour> filterByPrice(int min, int max) {
//        return null;
//    }

//    @Override
//    public List<Tour> filterByPrice(int min, int max) {
//        List<Tour> listOfTours = to.retrieveProducts();
//
//        return null;
//    }
}
