package com.example.skyland.service;


import com.example.skyland.entity.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}