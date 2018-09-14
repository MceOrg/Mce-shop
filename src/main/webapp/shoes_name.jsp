<%@ page import="com.mce.shop.entity.Shoes" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/8
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>根据鞋名查询</h3>
<%
    List<Shoes> shoesList1=(List<Shoes>) request.getSession().getAttribute("shoesList");
    for(Shoes shoes:shoesList1){%>
<a href="shoes?type=2&shoesname=<%="AJ"%>">鞋子名称:<%=shoes.getShoesName()%></a>,鞋子价格:<%=shoes.getShoesPriceSale()%>
<br>
<%
    }
%>

</body>
</html>
