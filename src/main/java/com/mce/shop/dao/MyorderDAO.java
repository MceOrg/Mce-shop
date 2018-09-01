package com.mce.shop.dao;

import com.mce.shop.entity.Myorder;
import com.mce.shop.entity.OrderDetail;

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
}