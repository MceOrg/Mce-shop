package com.mce.shop.service.impl;

import com.mce.shop.dao.ShoesDAO;
import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ShoesServiceImpl implements ShoesService{
    @Override
    public List<Shoes> getAll() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        List<Shoes> shoes= dao.queryAll();
        MybatisUtil.closeSession();
        return shoes;
    }

    @Override
    public Shoes getById(Integer id) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        Shoes shoes= dao.selectByPrimaryKey(id);
        MybatisUtil.closeSession();
        return shoes;
    }
}
