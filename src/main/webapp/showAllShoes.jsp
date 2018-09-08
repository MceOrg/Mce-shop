<%@ page import="java.util.List" %>
<%@ page import="com.mce.shop.entity.Shoes" %><%--
  Created by IntelliJ IDEA.
  User: myaccount
  Date: 2018/9/6
  Time: 下午3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
   List<Shoes> shoesList=(List<Shoes>) request.getSession().getAttribute("shoesList");
   for(Shoes shoes:shoesList){%>
    <a href="shoes?type=1&id=<%=shoes.getShoesId()%>">鞋子id:<%=shoes.getShoesId()%></a>, <a href="shoes?type=1&id=<%=shoes.getShoesId()%>">鞋子名称:<%=shoes.getShoesName()%></a>,鞋子价格:<%=shoes.getShoesPriceSale()%>
    <br>
   <%
   }
    %>
    
    
    <h3>浏览历史</h3>
    <%
    Cookie[] cookies=request.getCookies();
    if(cookies!=null){
        for (Cookie cookie:cookies){
            if (cookie.getName().contains("shoes")){
                %> 鞋子id:<%=cookie.getValue()%>
           <% }
        }
    }


    %>



</body>
</html>
