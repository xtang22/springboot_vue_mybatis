package com.timmy.travel.service.impl;

import com.timmy.travel.dao.ProvinceMapper;
import com.timmy.travel.pojo.Province;
import com.timmy.travel.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProvinceServiceImpl implements ProvinceService {

    @Autowired
    private ProvinceMapper provinceMapper;
    @Override
    public List<Province> findAll() {
        return provinceMapper.findAll();
    }

    @Override
    public Province findByName(String name) {
        return provinceMapper.findByName(name);
    }

    @Override
    public int insertProvince(Province province) {
        return provinceMapper.insertProvince(province);
    }

    @Override
    public Province findById(int id) {
        return provinceMapper.findById(id);
    }

    @Override
    public int updateById(Province province) {
        return provinceMapper.updateById(province);
    }

    @Override
    public int deleteById(int id) {
        return provinceMapper.deleteById(id);
    }
}
