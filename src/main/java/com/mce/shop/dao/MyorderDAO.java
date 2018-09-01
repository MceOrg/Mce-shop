package com.mce.shop.dao;

import com.mce.shop.entity.Myorder;
import com.mce.shop.entity.OrderDetail;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * MyorderDAO继承基类
 */
public interface MyorderDAO extends MyBatisBaseDao<Myorder, Integer> {
    /**
     @param order 添加的新订单对象
     @return 返回是否添加订单成功,true表示添加成功，false表示添加失败
     */
    public  boolean save(Myorder order);

    /**
     @param orderDetail 添加的新订单详情对象
     @return 返回添加新订单详情是否成功,true表示添加成功，false表示添加失败
     */
    public  boolean saveDetails(OrderDetail orderDetail);

    /**
     @param custId 当前用户的ID
     @return 返回当前账户的所有订单列表
     */
    public List<Myorder> queryAll(Integer custId);

    /**
     *
      @param shoesName 要查询的鞋的名称（模糊查询）
      @param custId 当前用户的ID
     @return 返回当前用户的要查询的订单列表
     */
    public  List<Myorder> queryByShoesName(@Param("shoesName") String shoesName,@Param("custId") Integer custId);

    /**
     @param orderNumber 要查询的鞋编号（模糊查询）
     @param custId 当前用户的ID
     @return 返回当前用户的要查询指定的订单详情
     */
    public  List<Myorder> queryById(Integer orderNumber,Integer custId);
}