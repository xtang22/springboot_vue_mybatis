package com.timmy.travel.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.timmy.travel.pojo.CommonResult;
import com.timmy.travel.pojo.Province;
import com.timmy.travel.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProvinceController {

    @Autowired
    private ProvinceService provinceService;

    @GetMapping("/province/{page}/{size}")
    public PageInfo<Province> getEmp(@PathVariable("page") Integer page, @PathVariable("size") Integer size){
        PageHelper.startPage(page,size);
        List<Province> list=provinceService.findAll();
        PageInfo<Province> pageInfo=new PageInfo<>(list);
        return pageInfo;
    }
    @PostMapping("/save")
    public String insertProvince(@RequestBody Province province){
        int res=provinceService.insertProvince(province);
        if(res>0){
            System.out.println(province);
            return "success";
        }else{
            return "false";
        }
    }
    @PutMapping("/update")
    public String updateById(@RequestBody Province province){
        int res=provinceService.updateById(province);
        if(res>0){
            System.out.println(province);
            return "success";
        }else{
            return "false";
        }
    }
    @GetMapping("/getProvinceById/{id}")
    public Province getProvinceById(@PathVariable int id){
        return provinceService.findById(id);
    }
    @DeleteMapping("/deleteById/{id}")
    public String deleteById(@PathVariable int id){
        int res=provinceService.deleteById(id);
        if(res>0){
            return "success";
        }else{
            return "false";
        }
    }
}
