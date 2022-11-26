package com.example.skyland.service;


import com.example.skyland.entity.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
    void login(String username, String password);
    User findByEmail(String email);
    User findById(long id);

}