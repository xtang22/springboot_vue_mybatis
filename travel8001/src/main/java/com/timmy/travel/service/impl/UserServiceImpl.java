package com.timmy.travel.service.impl;

import com.timmy.travel.dao.UserMapper;
import com.timmy.travel.pojo.User;
import com.timmy.travel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(User user) {
        User user1 = userMapper.findByUsername(user.getUsername());
        if (user1 != null) {
            if (user1.getPassword().equals(user.getPassword())) {
                return user1;
            }
            throw new RuntimeException("密码输入错误~~~");
        } else {
            throw new RuntimeException("用户名输入错误或者用户不存在!!!");
        }
    }

    @Override
    public void register(User user) {
        User user1 = userMapper.findByUsername(user.getUsername());
        if(user1==null){
            userMapper.save(user);
        }else{
            throw new RuntimeException("用户名已经存在~~~~");
        }

    }
}
