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
        }else if(type.equals("7")){
            this.goUpdateInfo(req,resp);
        }else if(type.equals("8")){
            this.updateInfo(req,resp);
        }else if (type.equals("9")){
            this.updatePwd(req,resp);
        }else if (type.equals("10")){
            this.goUpdatePwd(req,resp);
        }
    }

    private void showInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/show_myInfo.jsp").forward(req,resp);
    }

    private void goUpdateInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/update_myInfo.jsp").forward(req,resp);
    }

    private void goRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req,resp);
    }
    private void goLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        String token = TokenProccessor.getInstance().makeToken();//创建令牌
//        req.getSession().setAttribute("token", token);  //在服务器使用session保存token(令牌)
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
    }

    private void goUpdatePwd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/WEB-INF/views/update_pwd.jsp").forward(req,resp);
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


    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        boolean b = this.isRepeatSubmit(req);//判断用户是否是重复提交
//        if(b){
//            System.out.println("请不要重复提交");
//            return;
//        }
//        req.getSession().removeAttribute("token");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String[] rems=req.getParameterValues("rem");
        Customer customer=null;
        CustLoginService service=new CustLoginServiceImpl();
        String REGEX_MOBILE = "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$";
        String REGEX_EMAIL = "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*\\.[a-zA-Z0-9]{2,6}$";
        if(username.matches(REGEX_EMAIL)){
            customer=service.checkEmailAndPwd(username,password);
            if (customer!=null){
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
                req.getRequestDispatcher("/WEB-INF/views/mainPage.jsp").forward(req,resp);
            }else {
                req.setAttribute("errorMsg","用户名或密码错误");
                goLogin(req,resp);
            }

        }else if(username.matches(REGEX_MOBILE)){
            customer=service.checkTelnoAndPwd(username,password);
            if (customer!=null){
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
                goLogin(req,resp);
            }
        }else {
            req.setAttribute("errorMsg","用户名或密码错误");
            goLogin(req,resp);
        }
    }



    private void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        System.out.println("ww");
        String tel=req.getParameter("tel");
        String pwd=req.getParameter("password");
        Customer customer=new Customer(null,pwd,tel);
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
        goLogin(req,resp);
    }




    private void updateInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String custProfile=req.getParameter("custprofile");
        String custName=req.getParameter("custname");
        String custPhone=req.getParameter("custphone");
        Integer custAge=Integer.parseInt(req.getParameter("custage"));
        String custEmail=req.getParameter("custemail");
        Customer customer=(Customer) req.getSession().getAttribute("loginCustomer");
        String custPwd=customer.getCustPwd();
        Integer custId=customer.getCustId();
        Customer newCustomer=new Customer(custId,custName,custPwd,custAge,custPhone,custEmail,null,null,custProfile);
        CustomerService customerService=new CustomerServiceImpl();
        Integer row=customerService.updateCustInfo(newCustomer);
        if (row==1){
            req.getSession().setAttribute("loginCustomer",newCustomer);
            showInfo(req,resp);
        }else {
            req.setAttribute("errorMsg","修改失败");
            goUpdateInfo(req,resp);
        }


    }

    private void updatePwd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String oldpwd=req.getParameter("oldpwd");
        System.out.println(oldpwd);
        String newpwd=req.getParameter("newpwd");
        System.out.println(newpwd);
        String renewpwd=req.getParameter("renewpwd");
        System.out.println(renewpwd);
        Customer customer=(Customer) req.getSession().getAttribute("loginCustomer");
        CustomerService customerService=new CustomerServiceImpl();
        if ((oldpwd==null||oldpwd=="")||(newpwd==null||newpwd=="")||(renewpwd==null||renewpwd=="")){
            req.setAttribute("msg","请正确填写信息");
            goUpdatePwd(req,resp);
            return;
        }
        if (!newpwd.equals(renewpwd)){
            req.setAttribute("msg","两次密码输入不一致");
            goUpdatePwd(req,resp);
            return;
        }
        if (!oldpwd.equals(customer.getCustPwd())){
            req.setAttribute("msg","原密码输入不正确");
            goUpdatePwd(req,resp);
            return;
        }else {
            Customer newcustomer=customer;
            newcustomer.setCustPwd(newpwd);
            int row=customerService.updatePwd(newcustomer);
            if (row==1){
                req.setAttribute("msg","修改成功");
                goUpdatePwd(req,resp);
            }
        }
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
