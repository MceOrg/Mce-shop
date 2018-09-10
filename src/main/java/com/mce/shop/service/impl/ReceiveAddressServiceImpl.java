package com.mce.shop.service.impl;

import com.mce.shop.dao.ReceiveAddressDAO;
import com.mce.shop.entity.ReceiveAddress;
import com.mce.shop.service.ReceiveAddressService;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ReceiveAddressServiceImpl implements ReceiveAddressService {

    @Override
    public int insert(ReceiveAddress newAddress) {
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        return 0;
    }

    @Override
    public int delete(Integer addressId, Integer custId) {
        return 0;
    }

    @Override
    public int update(ReceiveAddress newAddress) {
        return 0;
    }

    @Override
    public List<ReceiveAddress> queryAll(Integer custId) {
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
