package com.mce.shop.controller;

import com.mce.shop.entity.Customer;
import com.mce.shop.service.CustLoginService;
import com.mce.shop.service.CustomerService;
import com.mce.shop.service.impl.CustLoginServiceImpl;
import com.mce.shop.service.impl.CustomerServiceImpl;
import com.mce.shop.util.TokenProccessor;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class CustomerServlet extends HttpServlet {
    private Integer custUUID=2;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type=req.getParameter("type");
        if(type.equals("0")){
            this.isValTel(req,resp);
        }else if(type.equals("1")){
            this.goRegister(req,resp);
        }else if(type.equals("2")){
            this.login(req,resp);
        }else if(type.equals("3")){
            this.goLogin(req,resp);
        }else if(type.equals("4")){
            this.register(req,resp);
        }else if(type.equals("5")){
            this.logout(req,resp);
        }else if(type.equals("6")){
            this.showInfo(req,resp);
        }
    }


    private void isValTel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String custPhone=req.getParameter("tel");
        CustomerService customerService=new CustomerServiceImpl();
        String tel= customerService.isValidTelno(custPhone);
        if(tel!=null){
            PrintWriter out=resp.getWriter();
            out.print(true);
        }else {
            PrintWriter out=resp.getWriter();
            out.print(false);
        }
    }


    private void goRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req,resp);
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        boolean b = this.isRepeatSubmit(req);//判断用户是否是重复提交
//        if(b){
//            System.out.println("请不要重复提交");
//            return;
//        }
        req.getSession().removeAttribute("token");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String[] rems=req.getParameterValues("rem");
        Customer customer=null;
        CustLoginService service=new CustLoginServiceImpl();
        String REGEX_MOBILE = "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$";
        String REGEX_EMAIL = "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*\\.[a-zA-Z0-9]{2,6}$";

        if(username.matches(REGEX_EMAIL)){
            customer=service.checkEmailAndPwd(username,password);
            if (rems.length==2){
                Cookie cookie=new Cookie("accountname",customer.getCustEmail());
                Cookie cookie1=new Cookie("checkbox","true");
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
            }else {
                Cookie cookie=new Cookie("accountname",null);
                Cookie cookie1=new Cookie("checkbox","false");
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
            }

            HttpSession session=req.getSession();
            session.setAttribute("loginCustomer",customer);
            req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req,resp);
        }else if(username.matches(REGEX_MOBILE)){
            customer=service.checkTelnoAndPwd(username,password);
            if (rems.length==2){
                Cookie cookie=new Cookie("accountname",customer.getCustPhone());
                Cookie cookie1=new Cookie("checkbox","true");
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
            }else {
                Cookie cookie=new Cookie("accountname",null);
                Cookie cookie1=new Cookie("checkbox","false");
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
            }
            HttpSession session=req.getSession();
            session.setAttribute("loginCustomer",customer);
            req.getRequestDispatcher("/WEB-INF/views/mainPage.jsp").forward(req,resp);
        }else {
            req.setAttribute("errorMsg","用户名或密码错误");
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
        }
    }

    private void goLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        String token = TokenProccessor.getInstance().makeToken();//创建令牌
//        req.getSession().setAttribute("token", token);  //在服务器使用session保存token(令牌)
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
    }

    private void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String tel=req.getParameter("tel");
        String pwd=req.getParameter("password");
        Customer customer=new Customer(null,pwd,tel);
        customer.setCustName(tel);
        CustomerService customerService=new CustomerServiceImpl();
        int row=customerService.regist(customer);
        if(row==1){
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
        }
    }
    private void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        String token = TokenProccessor.getInstance().makeToken();//创建令牌
//        req.getSession().setAttribute("token", token);  //在服务器使用session保存token(令牌)
        req.getSession().removeAttribute("loginCustomer");
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
    }




    private void showInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/show_myInfo.jsp").forward(req,resp);
        System.out.println("sss");
    }


    private boolean isRepeatSubmit(HttpServletRequest request) {
        String client_token = request.getParameter("token");
        if(client_token==null){
           return true;
        }
        String server_token = (String) request.getSession().getAttribute("token");
        if(server_token==null){
            return true;
        }
        if(!client_token.equals(server_token)){
            return true;
        }
        return false;
    }
}
