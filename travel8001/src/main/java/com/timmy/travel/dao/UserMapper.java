package com.timmy.travel.dao;

import com.timmy.travel.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserMapper {
    void save(User user);
    User findByUsername(String username);
}
