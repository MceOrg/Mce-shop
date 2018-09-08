package com.mce.shop.controller;

import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.service.impl.ShoesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ShoesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type=req.getParameter("type");
        if (type.equals("0")) {
            getAllShoes(req,resp);
        }if (type.equals("1")) {
            getShoesById(req,resp);
        }
        if(type.equals("2")){
            getShoesByName(req,resp);
        }
        if(type.equals("3")){
            getShoesByPrice(req,resp);
        }
        else if(type.equals("4")){
            getShoesByGender(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }



    private void getAllShoes(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        List<Shoes> shoesList=shoesService.getAllShoes();
        HttpSession session=req.getSession();
        session.setAttribute("shoesList",shoesList);
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

    private void getShoesByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        String name = req.getParameter("shoesname");
        List<Shoes> shoesList=shoesService.getByName(name);
        req.setAttribute("shoesList",shoesList);
        req.getRequestDispatcher("/showAllShoes.jsp").forward(req,resp);
    }

    private void getShoesByPrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        Float minPrice = Float.parseFloat(req.getParameter("minprice"));
        Float maxPrice = Float.parseFloat(req.getParameter("maxprice"));
        List<Shoes> shoesList=shoesService.getByPrice(minPrice,maxPrice);
        req.setAttribute("shoesList",shoesList);
        req.getRequestDispatcher("/showAllShoes.jsp").forward(req,resp);
    }
    private void getShoesByGender(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoesService shoesService=new ShoesServiceImpl();
        Byte gender =Byte.parseByte(req.getParameter("gender"));
        List<Shoes> shoesList=shoesService.getByGender(gender);
        req.setAttribute("shoesList",shoesList);
        req.getRequestDispatcher("/showAllShoes.jsp").forward(req,resp);
    }



}
