package com.mce.shop.service.impl;

import com.mce.shop.dao.ShoesDAO;
import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

public class ShoesServiceImpl implements ShoesService {
    @Override
    public Shoes queryShoesById(Integer id) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        Shoes shoes = dao.queryById(id);
        sqlSession.close();
        return shoes;
    }
}
