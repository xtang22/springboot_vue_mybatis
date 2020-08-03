package com.timmy.travel.service;

import com.timmy.travel.pojo.Province;

import java.util.List;

public interface ProvinceService {
    List<Province> findAll();
    Province findByName(String name);
    int insertProvince(Province province);
    Province findById(int id);
    int updateById(Province province);
    int deleteById(int id);
}
