package com.example.skyland.controller;

import com.example.skyland.entity.Tour;
import com.example.skyland.service.CategoryService;
import com.example.skyland.service.TourService;
import com.example.skyland.validator.TourValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class TourController {
    private static final Logger logger = LoggerFactory.getLogger(TourController.class);
    private final TourService tourService;
    private final TourValidator tourValidator;
    private final CategoryService categoryService;

    public TourController(TourService tourService, TourValidator tourValidator, CategoryService categoryService) {
        this.tourService = tourService;
        this.tourValidator = tourValidator;
        this.categoryService = categoryService;
    }


    @GetMapping("/tour/new")
    public String newTour(Model model) {
        model.addAttribute("tourForm", new Tour());
        model.addAttribute("method", "new");
        model.addAttribute("categories", categoryService.findAll());
        return "creatingTour";
    }


    @PostMapping("/tour/new")
    public String newTour(@ModelAttribute("tourForm") Tour tourForm, BindingResult bindingResult, Model model) {
        tourValidator.validate(tourForm, bindingResult);

        if (bindingResult.hasErrors()) {
            logger.error(String.valueOf(bindingResult.getFieldError()));
            model.addAttribute("method", "new");
            return "creatingTour";
        }
        tourService.save(tourForm);
        logger.debug(String.format("Tour with id: %s successfully created.", tourForm.getId()));

        return "redirect:/home";
    }

    @GetMapping("/tour/edit/{id}")
    public String editTour(@PathVariable("id") long tourId, Model model) {
        Tour tour = tourService.findById(tourId);
        if (tour != null) {
            model.addAttribute("tourForm", tour);
            model.addAttribute("method", "edit");
            return "creatingTour";
        } else {
            return "error/404";
        }
    }

    @PostMapping("/tour/edit/{id}")
    public String editTour(@PathVariable("id") long tourId, @ModelAttribute("tourForm") Tour tourForm, BindingResult bindingResult, Model model) {
        tourValidator.validate(tourForm, bindingResult);

        if (bindingResult.hasErrors()) {
            logger.error(String.valueOf(bindingResult.getFieldError()));
            model.addAttribute("method", "edit");
            return "creatingTour";
        }
        tourService.edit(tourId, tourForm);
        logger.debug(String.format("Tour with id: %s has been successfully edited.", tourId));

        return "redirect:/home";
    }

    @GetMapping("/tour/delete/{id}")
    public String deleteTour(@PathVariable("id") long tourId) {
        Tour tour = tourService.findById(tourId);
        if (tour != null) {
            tourService.delete(tourId);
            logger.debug(String.format("Tour with id: %s successfully deleted.", tour.getId()));
            return "redirect:/home";
        } else {
            return "error/404";
        }
    }

    @GetMapping("/tour/{id}")
    public String toDetails(Model model, @PathVariable("id") Long id) {
        Tour tour = tourService.findById(id);
        model.addAttribute("tour", tour);
        return "tour";
    }

}
