package com.mce.shop.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class CookieTestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");


        Cookie cookie = new Cookie("loginTime", String.valueOf(new Date().getTime()));
        cookie.setMaxAge(60);
        response.addCookie(cookie);

        Cookie[] cookies = request.getCookies();
        if(null != cookies){
            for (Cookie cookie1 : cookies) {
                if(cookie1.getName().equals("loginTime"))
                System.out.println("上次登录时间:"+cookie1.getValue());
            }
        }
    }
}
