package com.mce.shop.service.impl;

import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;

import java.util.ArrayList;
import java.util.List;

public class ShoesServiceImpl implements ShoesService {
    List<Shoes> shoesList=new ArrayList<>();
    @Override
    public List<Shoes> getAllShoes() {
        shoesList.add(new Shoes(1,"Nike AirMax",699F));
        shoesList.add(new Shoes(2,"Nike AirJordan",1699F));
        shoesList.add(new Shoes(3,"Nike FreeFoot",899F));
        shoesList.add(new Shoes(4,"Nike AirForce1",599F));
        shoesList.add(new Shoes(5,"Nike Boot",999F));
        return shoesList;
    }

    @Override
    public Shoes getShoesById(Integer id) {
        for(Shoes shoes:shoesList){
            if (shoes.getShoesId()==id){
                return shoes;
            }
        }
        return null;
    }
}
