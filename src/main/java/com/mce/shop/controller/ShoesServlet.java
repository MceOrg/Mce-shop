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
        String type=req.getParameter("type");
        if (type.equals("0")) {
            getAllShoes(req,resp);
        }else {
            getShoesById(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }



    private void getAllShoes(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        List<Shoes> shoesList=shoesService.getAllShoes();
        req.setAttribute("shoesList",shoesList);
        req.getRequestDispatcher("/showAllShoes.jsp").forward(req,resp);
    }
    private void getShoesById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        Integer id=Integer.parseInt(req.getParameter("id"));
        Shoes shoes=shoesService.getShoesById(id);

        Cookie cookie=new Cookie("shoes"+id,id.toString());
        cookie.setMaxAge(60*60*24*7);
        resp.addCookie(cookie);
    }



}
