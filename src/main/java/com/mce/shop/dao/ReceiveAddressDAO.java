package com.mce.shop.dao;

import com.mce.shop.entity.ReceiveAddress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * ReceiveAddressDAO继承基类
 */
public interface ReceiveAddressDAO extends MyBatisBaseDao<ReceiveAddress, Integer> {
    /**
     * 添加当前用户新收件地址
     * @param newAddress 新增的收件地址对象
     * @return 返回受影响行数
     */
    public int insert(ReceiveAddress newAddress);

    /**
     * @param addressId  要删除的收件地址ID
     * @param custId 当前用户ID
     * @return 返回受影响行数
     */
    public int delete(@Param("addressId") Integer addressId,@Param("custId") Integer custId);

    /**
     * @param newAddress 要修改的收件地址对象
     * @return 返回受影响行数
     */
    public int update(ReceiveAddress newAddress);

    /**
     @param custId 当前用户ID
     @return 返回当前客户所有的
     */
    public List<ReceiveAddress> queryAll(Integer custId);

    /**
     @param addressId 要设置为默认收件地址的地址ID
     @param custId 当前用户ID
     @return 返回受影响行数
     */
    public  int updateDefaultAddress(@Param("addressId") Integer addressId,@Param("custId") Integer custId);
}