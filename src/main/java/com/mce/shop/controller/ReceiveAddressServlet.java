package com.mce.shop.controller;

import com.mce.shop.entity.ReceiveAddress;
import com.mce.shop.service.ReceiveAddressService;
import com.mce.shop.service.impl.ReceiveAddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ReceiveAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReceiveAddressService service = new ReceiveAddressServiceImpl();
        List<ReceiveAddress> addresses = service.queryAllUserAddress(1);
        addresses.forEach(System.out::println);
        request.getRequestDispatcher("/receiveAddressUi").forward(request,response);
    }
}
