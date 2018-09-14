package com.mce.shop.service.impl;

import com.mce.shop.dao.ReceiveAddressDAO;
import com.mce.shop.entity.ReceiveAddress;
import com.mce.shop.service.ReceiveAddressService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ReceiveAddressServiceImpl implements ReceiveAddressService {

    @Override
    public int addNewAddress(ReceiveAddress newAddress) {
        SqlSession sqlSession = MybatisUtil.getSession();
        try {
            ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
            int row=dao.insert(newAddress);
            sqlSession.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }

    }

    @Override
    public int deleteAddress(Integer addressId, Integer custId) {
        SqlSession sqlSession = MybatisUtil.getSession();
        try {
            ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
            int row=dao.delete(addressId,custId);
            sqlSession.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public int updateAddress(ReceiveAddress newAddress) {
        SqlSession session=MybatisUtil.getSession();
        try {
            ReceiveAddressDAO receiveAddressDAO=session.getMapper(ReceiveAddressDAO.class);
            int row= receiveAddressDAO.update(newAddress);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Override
    public List<ReceiveAddress> getAllAddresses(Integer custId) {
        SqlSession session=MybatisUtil.getSession();
        ReceiveAddressDAO receiveAddressDAO=session.getMapper(ReceiveAddressDAO.class);
        List<ReceiveAddress> receiveAddresses=receiveAddressDAO.queryAll(custId);
        return receiveAddresses;
    }

    @Override
    public int updateDefaultAddress(Integer addressId, Integer custId,Integer isDefaultAddress) {
        SqlSession session=MybatisUtil.getSession();
        try {
            ReceiveAddressDAO receiveAddressDAO=session.getMapper(ReceiveAddressDAO.class);
            int row=receiveAddressDAO.updateDefaultAddress(addressId,custId,isDefaultAddress);
            session.commit();
            return row;
        }finally {
            MybatisUtil.closeSession();
        }

    }
}
