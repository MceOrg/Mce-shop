package com.mce.shop.service;

import com.mce.shop.entity.Shoes;

import java.util.List;

public interface ShoesService {
    public List<Shoes> getAllShoes();

    public Shoes getShoesById(Integer id);

    public List<Shoes> getByName(String name);

    public List<Shoes> getByPrice(Float minPrice,Float maxPrice);

    public List<Shoes> getByGender(Byte gender);
}
