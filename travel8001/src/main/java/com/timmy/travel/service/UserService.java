package com.timmy.travel.service;

import com.timmy.travel.pojo.User;

public interface UserService {
    User login(User user);
    void register(User user);
}
