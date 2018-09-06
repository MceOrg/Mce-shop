package com.mce.shop.service.impl;

import com.mce.shop.dao.CustLoginDAO;
import com.mce.shop.entity.CustLogin;
import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustLoginService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.Date;

public class CustLoginServiceImpl implements CustLoginService {
    @Override
    public Customer checkTelnoAndPwd(String telno, String password) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Customer customer=custLoginDAO.checkTelnoAndPwd(telno,password);
            if(customer!=null){
                return customer;
            }else {
                return null;
            }
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public Customer checkEmailAndPwd(String email, String password) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Customer customer=custLoginDAO.checkEmailAndPwd(email,password);
            if(customer!=null){
                return customer;
            }else {
                return null;
            }
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public int save(CustLogin custLogin) {
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Integer row=custLoginDAO.save(custLogin);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }
}
