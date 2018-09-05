package com.mce.shop.controller;

import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.service.impl.ShoesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ShoesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoesService service = new ShoesServiceImpl();
        Shoes shoes = service.queryShoesById(1);
        System.out.println(shoes);
        request.getRequestDispatcher("/queryShoesByIdUi").forward(request,response);

    }
}
