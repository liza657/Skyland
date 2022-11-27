package com.example.skyland.controller;

import com.example.skyland.entity.Tour;
import com.example.skyland.entity.User;
import com.example.skyland.service.CategoryService;
import com.example.skyland.service.SecurityService;
import com.example.skyland.service.TourService;
import com.example.skyland.service.UserService;
import com.example.skyland.validator.UserValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;


@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private final UserService userService;
    private final TourService tourService;
    @Autowired
    private CategoryService categoryService;
    private SecurityService securityService;

    private final UserValidator userValidator;

    public UserController(UserService userService, TourService tourService, CategoryService categoryService, SecurityService securityService, UserValidator userValidator) {
        this.userService = userService;
        this.tourService = tourService;
        this.categoryService = categoryService;
        this.securityService = securityService;
        this.userValidator = userValidator;
    }


    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("tours", getAllTours());
        model.addAttribute("toursCount", toursCount());
        model.addAttribute("categories", categoryService.findAll());
        return "index";
    }


    @RequestMapping("/searchByCategory")
    public String homePost(@RequestParam("categoryId") long categoryId, Model model) {
        model.addAttribute("tours", tourService.findAllByCategoryId(categoryId));
        model.addAttribute("toursCount", tourService.count());
        model.addAttribute("categories", categoryService.findAll());
        return "index";
    }


    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            logger.error(String.valueOf(bindingResult.getFieldError()));
            return "registration";
        }

        userService.save(userForm);

        userService.login(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/home";
    }

    @GetMapping("/login")
    public String login(Model model, String error) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        return "login";
    }


    @GetMapping("/account")
    public String userPanel(Principal principal, Model model) {
        User user = userService.findByUsername(principal.getName());

        if (user != null) {
            model.addAttribute("user", user);
        } else {
            return "error/404";

        }

        return "user";
    }

    @GetMapping("/tour")
    public String about() {
        return "tour";
    }

    private long toursCount() {
        return tourService.count();
    }

    private List<Tour> getAllTours() {
        return tourService.findAllByOrderByIdAsc();
    }
}