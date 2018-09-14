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
import java.util.UUID;

public class ReceiveAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type=request.getParameter("type");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        if (type.equals("0")){
            getAllAddresses(request,response);
        }else if(type.equals("1")){
            updateDefauladdress(request,response);
        }else if(type.equals("2")){
            deleteAddress(request,response);
        }else if (type.equals("3")){
            updateOneAddress(request,response);
        }else if (type.equals("4")){
            addNewAddress(request,response);
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
                getAllAddresses(request,response);
            }else {
                System.out.println("修改失败");
                return;
            }
        }else {
            System.out.println("sssss");
            return;
        }
    }



    private void updateOneAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("ss");
        Integer addressid=Integer.parseInt(request.getParameter("update_addressid"));
        String custname=request.getParameter("custname");
        Long custphone=Long.parseLong(request.getParameter("custphone"));
        String province=request.getParameter("province");
        String city=request.getParameter("city");
        String area=request.getParameter("area");
        String street=request.getParameter("street");
        String detailLocation=request.getParameter("detaillocation");
        Integer postcode=Integer.parseInt(request.getParameter("postcode"));
        Integer isdefault=Integer.parseInt(request.getParameter("update_isDefaultAddress"));
        Customer customer=(Customer) request.getSession().getAttribute("loginCustomer");
        ReceiveAddress address=new ReceiveAddress(addressid,province,city,area,street,detailLocation,postcode,custname,custphone,isdefault,customer.getCustId());
        ReceiveAddressService receiveAddressService=new ReceiveAddressServiceImpl();
        int row=receiveAddressService.updateAddress(address);
        if (row==1){
            getAllAddresses(request,response);
        }else {
            System.out.println("修改失败");
            return;
        }
    }

    private void addNewAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("ssa");
        String custname=request.getParameter("custname");
        Long custphone=Long.parseLong(request.getParameter("custphone"));
        String province=request.getParameter("province");
        String city=request.getParameter("city");
        String area=request.getParameter("area");
        String street=request.getParameter("street");
        String detailLocation=request.getParameter("detaillocation");
        String postcode=request.getParameter("postcode");
        Integer isdefault=0;
        Customer customer=(Customer) request.getSession().getAttribute("loginCustomer");
        int id=(int) (Math.random()*999999+100);
        ReceiveAddress address=new ReceiveAddress(id,province,city,area,street,detailLocation,Integer.parseInt(postcode),custname,custphone,isdefault,customer.getCustId());
        ReceiveAddressService receiveAddressService=new ReceiveAddressServiceImpl();
        int row=receiveAddressService.addNewAddress(address);
        System.out.println(row);
        if (row==1){
            getAllAddresses(request,response);
        }else {
            request.setAttribute("msg","添加失败");
            return;
        }

    }
}
