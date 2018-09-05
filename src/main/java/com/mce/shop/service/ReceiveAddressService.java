package com.mce.shop.service;

import com.mce.shop.entity.ReceiveAddress;

import java.util.List;

public interface ReceiveAddressService {
    public List<ReceiveAddress> queryAllUserAddress(Integer id);
}
