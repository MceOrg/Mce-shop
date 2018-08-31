package com.mce.shop.dao;

import com.mce.shop.entity.Customer;

/**
 * CustomerDAO继承基类
 */
public interface CustomerDAO extends MyBatisBaseDao<Customer, Integer> {
    /**
     判断手机号是否已经注册过
     @param telno 验证手机号码是否已经注册
     @return 若该手机号已经注册，则返回已注册的手机号，若没有注册过，则返回null
     */
    public Long isValidTelno(Long telno);

    /**
     判断邮箱是否已经注册过
     @param email 验证邮箱是否已经注册
     @return 若该邮箱已经注册，则返回已注册的邮箱，若没有注册过，则返回null
     */
    public String isValidEmail(String email);

    /**
     设置用户密码 ，根据用户ID修改密码
     @param customer 需要设置密码的用户，该对象封装了新密码
     @return 返回修改受影响行数
     */
    public int updatePwd(Customer customer);

    /**
     新用户注册
     @param customer 需要注册的会员
     @return 返回添加受影响行数
     */
    public int regist(Customer customer );

    /**
     判断用户登录的手机号与密码是否正确
     @param telno 登录手机号（注册时手机号）
     @param loginPwd 登录密码
     @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public  Customer  checkTelnoAndPwd  (Long telno,String password );

    /**
     判断用户登录的邮箱与密码是否正确
     @param email 登录邮箱（注册时的邮箱）
     @param loginPwd 登录密码
     @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public  Customer  checkEmailAndPwd (String email,String password );
    /**
     添加登录记录
     @param custLogin 用户登录信息对象
     @return  返回添加受影响的行数
     */
    public  int save(CustLogin custLogin);



    /**
     根据主键查询用户自己的信息
     @param custId 用户ID
     @return 返回用户详细信息
     */
    public  Customer queryById(Integer custId);
    /**
     修改用户信息
     @param customer 要修改的用户信息
     @return 返回受影响的行数
     */
    public  int update(Customer customer);
}