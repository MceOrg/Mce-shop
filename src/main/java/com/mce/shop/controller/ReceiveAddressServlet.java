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
import java.io.PrintWriter;
import java.util.List;

public class ReceiveAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type=request.getParameter("type");
        if (type.equals("0")){
            getAllAddresses(request,response);
        }else if(type.equals("1")){
            updateDefauladdress(request,response);
        }else if(type.equals("2")){
            deleteAddress(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }


    private void getAllAddresses(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ReceiveAddressService service = new ReceiveAddressServiceImpl();
        Customer customer =(Customer) request.getSession().getAttribute("loginCustomer");
        List<ReceiveAddress> addresses = service.getAllAddresses(customer.getCustId());
        request.getSession().setAttribute("alladdress",addresses);
        request.getRequestDispatcher("/WEB-INF/views/writeAddress.jsp").forward(request,response);
    }

    private void updateDefauladdress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ReceiveAddressService receiveAddressService=new ReceiveAddressServiceImpl();
        Customer customer =(Customer) request.getSession().getAttribute("loginCustomer");
        Integer addressId=Integer.parseInt(request.getParameter("addressid"));
        Integer defaultaddressId=Integer.parseInt(request.getParameter("defaultaddressid"));
        int row=receiveAddressService.updateDefaultAddress(addressId,customer.getCustId(),1);
        int row2=receiveAddressService.updateDefaultAddress(defaultaddressId,customer.getCustId(),0);
        if (row==1&&row2==1){
            PrintWriter out=response.getWriter();
            out.print(true);
        }else {
            PrintWriter out=response.getWriter();
            out.print(false);
        }

    }

    private void deleteAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ReceiveAddressService receiveAddressService=new ReceiveAddressServiceImpl();
        Customer customer =(Customer) request.getSession().getAttribute("loginCustomer");
        System.out.println(request.getParameter("addressid"));
        if (request.getParameter("addressid")!=null){
            Integer addressId=Integer.parseInt(request.getParameter("addressid"));
            Integer row=receiveAddressService.deleteAddress(addressId,customer.getCustId());
            if(row==1){
                PrintWriter out=response.getWriter();
                out.print(true);
            }else {
                PrintWriter out=response.getWriter();
                out.print(false);
            }
        }else {
            System.out.println("sssss");
            return;
        }
    }
}
