package com.mce.shop.controller;

import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.service.impl.ShoesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ShoesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer type = Integer.parseInt(req.getParameter("type"));
        switch (type){
            case 0:
                getAll(req,resp);
                break;
            case 1:getById(req,resp);
            break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService service =new ShoesServiceImpl();
        List<Shoes> shoesList =service.getAll();
        req.setAttribute("shoesList",shoesList);
        req.getRequestDispatcher("/WEB-INF/views/shoes_list.jsp").forward(req,resp);

    }

    private void getById(HttpServletRequest req, HttpServletResponse resp){
        Integer id =Integer.parseInt(req.getParameter("id"));
        ShoesService service =new ShoesServiceImpl();
        Shoes shoes = service.getById(id);
        Cookie cookie = new Cookie("shoes"+id.toString(),id.toString());
        cookie.setMaxAge(60*5);
        resp.addCookie(cookie);
        System.out.println("已经浏览该商品");


    }
}
