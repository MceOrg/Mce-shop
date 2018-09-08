
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.mce.shop.entity.Customer" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>


<%
  Customer customer= (Customer) request.getSession().getAttribute("loginCustomer");
%>

客户id:<%=customer.getCustId()%><br>
顾客姓名:<%=customer.getCustName()%><br>
顾客年龄:<%=customer.getCustAge()%><br>
顾客电话:<%=customer.getCustPhone()%>

<a href="customer?type=5">退出</a>


</body>
</html>
