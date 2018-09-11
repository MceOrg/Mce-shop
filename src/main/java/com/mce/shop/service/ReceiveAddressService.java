package com.mce.shop.service;

import com.mce.shop.entity.ReceiveAddress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReceiveAddressService {

    /**
     * 添加当前用户新收件地址
     * @param newAddress 新增的收件地址对象
     * @return 返回受影响行数
     */
    public int addNewAddress(ReceiveAddress newAddress);

    /**
     * @param addressId  要删除的收件地址ID
     * @param custId 当前用户ID
     * @return 返回受影响行数
     */
    public int deleteAddress(Integer addressId,Integer custId);

    /**
     * @param newAddress 要修改的收件地址对象
     * @return 返回受影响行数
     */
    public int updateAddress(ReceiveAddress newAddress);

    /**
     @param custId 当前用户ID
     @return 返回当前客户所有的
     */
    public List<ReceiveAddress> getAllAddresses(Integer custId);

    /**
     @param addressId 要设置为默认收件地址的地址ID
     @param custId 当前用户ID
     @return 返回受影响行数
     */
    public  int updateDefaultAddress(Integer addressId,Integer custId,Integer isDefaultAddress);
}
