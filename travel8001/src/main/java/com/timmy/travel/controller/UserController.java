package com.timmy.travel.controller;

import com.timmy.travel.pojo.CommonResult;
import com.timmy.travel.pojo.User;
import com.timmy.travel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public CommonResult login(@RequestBody  User user){
        User user1=userService.login(user);
        CommonResult commonResult=new CommonResult(200,"登录成功",user);
        return commonResult;
    }

    @PostMapping("/register")
    public CommonResult register(@RequestBody User user){
        userService.register(user);
        CommonResult commonResult=new CommonResult(200,"注册成功",user);
        return commonResult;
    }
}
