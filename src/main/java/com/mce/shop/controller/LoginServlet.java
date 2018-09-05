package com.mce.shop.controller;

import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustLoginService;
import com.mce.shop.service.serviceImpl.CustLoginServiceImpl;

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
        String password=req.getParameter("password");
        CustLoginService service=new CustLoginServiceImpl();
        Customer customer=
    }
}
