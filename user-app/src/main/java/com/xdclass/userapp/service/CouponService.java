package com.xdclass.userapp.service;

import com.xdclass.userapp.domain.TCoupon;
import com.xdclass.userapp.domain.TCouponExample;
import com.xdclass.userapp.mapper.TCouponMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CouponService {

    @Resource
    private TCouponMapper tCouponMapper;

    public void print(){
        System.err.println("enter coupon service");
    }


    public String query(){
        TCouponExample example = new TCouponExample();
        example.createCriteria().andCodeEqualTo("222c75c-f8c-4c83-4e-aba93ef5");
        List<TCoupon> tCoupon =  tCouponMapper.selectByExample(example);
        return tCoupon.get(0).toString();
    }


}
