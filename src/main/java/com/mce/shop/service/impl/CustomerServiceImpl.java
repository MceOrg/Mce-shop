package com.mce.shop.service.impl;

import com.mce.shop.dao.CustomerDAO;
import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustomerService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

public class CustomerServiceImpl implements CustomerService {
    public Customer loginByName(String name) {
        SqlSession sqlSession = MybatisUtil.getSession();
        CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
        //Customer customer = dao.
        return null;
    }
}
