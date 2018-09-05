package com.mce.shop.dao;

import com.mce.shop.entity.ShoesImg;

import java.util.List;

/**
 * ShoesImgDAO继承基类
 */
public interface ShoesImgDAO extends MyBatisBaseDao<ShoesImg, Integer> {

    /**
     @param shoesId 指定的鞋子ID
     @return 返回指定鞋子的所有图片
     */
    public List<ShoesImg> queryAllImgByShoesId(Integer shoesId);
}