package com.mce.shop.service.impl;

import com.mce.shop.dao.ShoesDAO;
import com.mce.shop.dao.ShoesImgDAO;
import com.mce.shop.entity.Shoes;
import com.mce.shop.entity.ShoesImg;
import com.mce.shop.service.ShoesService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShoesServiceImpl implements ShoesService {
    List<Shoes> shoesList=new ArrayList<>();
    List<ShoesImg> shoesImgDAOList =new ArrayList<>();
    @Override
    public List<Shoes> getAllShoes() {

        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        ShoesImgDAO dao1 = sqlSession.getMapper(ShoesImgDAO.class);
        shoesList = dao.queryAll();
        for(Shoes shoes:shoesList){
            shoesImgDAOList =dao1.queryAllImgByShoesId(shoes.getShoesId());
        }
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
        List<Shoes> shoesList1 = dao.queryByName(name);
        MybatisUtil.closeSession();
        return shoesList1;
    }

    @Override
    public List<Shoes> getByPrice(Float minPrice, Float maxPrice) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        List<Shoes> shoesList1 = dao.queryByPrice(minPrice,maxPrice);
        MybatisUtil.closeSession();
        return shoesList1;
    }

    @Override
    public List<Shoes> getByGender(Byte gender) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        List<Shoes> shoesList1 =dao.queryByGender(gender);
        MybatisUtil.closeSession();
        return shoesList1;
    }
}
