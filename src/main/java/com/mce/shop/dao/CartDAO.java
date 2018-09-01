package com.mce.shop.dao;

import com.mce.shop.entity.Cart;
import com.mce.shop.entity.ShoesDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * CartDAO继承基类
 */
public interface CartDAO extends MyBatisBaseDao<Cart, Integer> {
    /**
     * @param shoesDetail 要添加至购物车中的鞋对象
     * @return 返回受影响行数
     */
    public  int save(@Param("shoesDetail") ShoesDetail shoesDetail,@Param("custId") Integer custId);
    /**
     * @param shoesDetail 要从购物车中删除的鞋对象
     * @return 返回受影响行数
     */
    public  int delete(ShoesDetail shoesDetail,Integer custId);

    /**
     *@param shoes_detail_id 要修改的购物车中鞋ID
     *@param custId 当前用户ID
     *@param count 购物车中该鞋子的数量
     *@return 返回受影响行数
     */
    public  int updateCount(Integer shoes_detail_id,Integer custId,Integer count);

    /**
     *@param custId 当前用户ID
     *@return 返回当前用户购物车中所有的鞋子
     */
    public List<ShoesDetail> queryAll(Integer custId);
}