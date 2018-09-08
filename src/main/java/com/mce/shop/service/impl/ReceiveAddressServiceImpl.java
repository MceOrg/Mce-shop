package com.mce.shop.service.impl;

import com.mce.shop.dao.ReceiveAddressDAO;
import com.mce.shop.entity.ReceiveAddress;
import com.mce.shop.service.ReceiveAddressService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ReceiveAddressServiceImpl implements ReceiveAddressService {
    @Override
    public List<ReceiveAddress> queryAllUserAddress(Integer id) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        List<ReceiveAddress> addressList = dao.queryAll(1);
        sqlSession.close();
        return addressList;
    }
}
