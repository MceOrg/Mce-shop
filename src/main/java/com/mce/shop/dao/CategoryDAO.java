package com.mce.shop.dao;

import com.mce.shop.entity.Category;

import java.util.List;

/**
 * CategoryDAO继承基类
 */
public interface CategoryDAO extends MyBatisBaseDao<Category, Integer> {
    /**
     @return 返回所有鞋子的类别
     */
    public List<Category> queryAll();
}