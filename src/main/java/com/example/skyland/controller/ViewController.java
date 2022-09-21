package com.example.skyland.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping(value = "/skyland")
public class ViewController {
    @GetMapping("/home")
    public String index(Model model) {
        return "index";
    }

//    @GetMapping("/login")
//    public String login() {
//        return "login-page";
//    }
//
//    @GetMapping("/register")
//    public String register(Model model) {
//        return "register-page";
//    }
//
//    @GetMapping("/account")
//    public String userPage(Model model) {
//        return "user-page";
//    }
//
//    @GetMapping("/about")
//    public String about(Model model) {
//        return "about-page";
//    }
}
