package com.mce.shop.service;

import com.mce.shop.entity.Shoes;
import com.mce.shop.util.PageModel;

import java.util.List;

public interface ShoesService {
    public List<Shoes> getAllShoes();

    public Shoes getShoesById(Integer id);

    public List<Shoes> getByName(String name);

    public List<Shoes> getByPrice(Float minPrice,Float maxPrice);

    public List<Shoes> getByGender(Byte gender);

    /**
     * 分页查询
     * @param page 传入的页码信息
     * @return 返回当前页码的数据集合 + 页码信息
     */
    public PageModel<Shoes> getAllByPage(PageModel page);

    //总数
    public Integer getCount();
}
