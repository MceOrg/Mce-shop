package com.mce.shop.controller;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName =  request.getParameter("userName");
        String userPsw =  request.getParameter("userPsw");
        System.out.println(userName);
        System.out.println(userPsw);
        request.getRequestDispatcher("/WEB-INF/jsp/mainPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
