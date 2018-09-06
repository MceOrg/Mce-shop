package com.mce.shop.service.impl;

import com.mce.shop.dao.CustomerDAO;
import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustomerService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.Date;

public class CustomerServiceImpl implements CustomerService {
    @Override
    public String isValidTelno(String telno) {
        SqlSession session = MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO = session.getMapper(CustomerDAO.class);
            String tel = customerDAO.isValidTelno(telno);
            if (tel!=null) {
                return tel;
            } else {
                return null;
            }
        } finally {
            MybatisUtil.closeSession();
        }

    }

    @Override
    public String isValidEmail(String email) {
        SqlSession session = MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO = session.getMapper(CustomerDAO.class);
            String truemail = customerDAO.isValidEmail(email);
            if (truemail != null) {
                return email;
            } else {
                return null;
            }
        } finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public int updatePwd(Customer customer) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Integer row=customerDAO.updatePwd(customer);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public int regist(Customer customer) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Integer row=customerDAO.regist(customer);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public Customer queryById(Integer custId) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Customer customer=customerDAO.queryById(custId);
            return customer;
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public int updateCustInfo(Customer customer) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Integer row=customerDAO.update(customer);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }
}

