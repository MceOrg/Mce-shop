<%@ page import="com.mce.shop.entity.Shoes" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/7
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>全部商品</h2>
        <%
            List<Shoes> shoesList  = (List<Shoes> )request.getAttribute("shoesList");
            for(Shoes shoes:shoesList){

        %>
        鞋子ID:  <a href="${pageContext.request.contextPath}/shoes?type=1&id=<%=shoes.getShoesId()%>">
            <%= shoes.getShoesId()%>
        </a>
        鞋子名称: <a href="${pageContext.request.contextPath}/shoes?type=1&id=<%=shoes.getShoesId()%>"> <%= shoes.getShoesName()%></a>
        鞋子价格:  <%= shoes.getShoesPriceSale()%>
        <br>
        <%
            }
        %>
    <h2>浏览记录</h2>
        <%
            Cookie[] cookies = request.getCookies();
            if(cookies!=null){
                for(Cookie cookie :cookies){
                    if(cookie.getName().contains("shoes")){
                        // 显示 鞋子id
        %>
        鞋子id : <%= cookie.getValue()%>
        <%
                    }
                }
            }

        %>

</body>
</html>
