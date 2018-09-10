package com.mce.shop.controller;

import com.mce.shop.entity.Customer;
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
        String type=request.getParameter("type");
        if (type.equals("0")){
            getAllAddresses(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }


    private void getAllAddresses(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ReceiveAddressService service = new ReceiveAddressServiceImpl();
        Customer customer =(Customer) request.getSession().getAttribute("loginCustomer");
        List<ReceiveAddress> addresses = service.queryAll(customer.getCustId());
        request.getSession().setAttribute("alladdress",addresses);
        request.getRequestDispatcher("/WEB-INF/views/writeAddress.jsp").forward(request,response);
    }
}
