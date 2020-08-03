package com.timmy.travel.dao;

import com.timmy.travel.pojo.Province;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface ProvinceMapper {
    List<Province> findAll();
    Province findByName(String name);
    int insertProvince(Province province);
    Province findById(int id);
    int updateById(Province province);
    int deleteById(int id);
}
