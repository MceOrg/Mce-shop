package com.mce.shop.service.impl;

import com.mce.shop.dao.ShoesDAO;
import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.util.MybatisUtil;
import com.mce.shop.util.PageModel;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShoesServiceImpl implements ShoesService {
    List<Shoes> shoesList=new ArrayList<>();
    @Override
    public List<Shoes> getAllShoes() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        shoesList = dao.queryAll();
        MybatisUtil.closeSession();
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

    @Override
    public List<Shoes> getByName(String name) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        shoesList = dao.queryByName(name);
        MybatisUtil.closeSession();
        return shoesList;
    }

    @Override
    public List<Shoes> getByPrice(Float minPrice, Float maxPrice) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        shoesList = dao.queryByPrice(minPrice,maxPrice);
        MybatisUtil.closeSession();
        return shoesList;
    }

    @Override
    public List<Shoes> getByGender(Byte gender) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        shoesList = dao.queryByGender(gender);
        MybatisUtil.closeSession();
        return shoesList;
    }

    @Override
    public PageModel<Shoes> getAllByPage(PageModel page) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        shoesList = dao.queryAllByPage(page);
        page.setModelList(shoesList);
        MybatisUtil.closeSession();
        return page;
    }

    @Override
    public Integer getCount() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        Integer count = dao.getCount();
        MybatisUtil.closeSession();
        return count;
    }
}
