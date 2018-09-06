package com.mce.shop.controller;

import com.mce.shop.service.CustomerService;
import com.mce.shop.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class IsValTelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String custPhone=req.getParameter("tel");
        System.out.println(custPhone);
        CustomerService customerService=new CustomerServiceImpl();
        String tel= customerService.isValidTelno(custPhone);
        System.out.println(tel);
        if(tel!=null){
            PrintWriter out=resp.getWriter();
            out.print(true);
        }else {
            PrintWriter out=resp.getWriter();
            out.print(false);
        }
    }
}
