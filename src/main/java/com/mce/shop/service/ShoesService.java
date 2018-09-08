package com.mce.shop.service;

import com.mce.shop.entity.Shoes;

import java.util.List;

public interface ShoesService {
    public List<Shoes> getAllShoes();

    public Shoes getShoesById(Integer id);
}
