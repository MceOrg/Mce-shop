package com.mce.shop.controller;

import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustLoginService;
import com.mce.shop.service.impl.CustLoginServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        System.out.println(username);
        String password=req.getParameter("password");
        System.out.println(password);
        Customer customer=null;
        CustLoginService service=new CustLoginServiceImpl();
        String REGEX_MOBILE = "^((17[0-9])|(14[0-9])|(13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
        String REGEX_EMAIL = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";

        if(username.matches(REGEX_EMAIL)){
            customer=service.checkEmailAndPwd(username,password);
        }else if(username.matches(REGEX_MOBILE)){
            customer=service.checkTelnoAndPwd(username,password);
        }else {
            req.setAttribute("errorMsg","用户名或密码错误");
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
        }

    }
}
