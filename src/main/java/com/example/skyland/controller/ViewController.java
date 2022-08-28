package com.example.skyland.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/skyland")
public class ViewController {
    @GetMapping("/home")
    public String index() {
        return "index";
    }
    @GetMapping("/login")
    public String login() {
        return "login-page";
    }
    @GetMapping("/register")
    public String register() {
        return "register-page";
    }
    @GetMapping("/account")
    public String userPage() {
        return "user-page";
    }

    @GetMapping("/about")
    public String about() {
        return "about-page";
    }
}
