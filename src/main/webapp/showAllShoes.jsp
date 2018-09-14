<%@ page import="java.util.List" %>
<%@ page import="com.mce.shop.entity.Shoes" %><%--
  Created by IntelliJ IDEA.
  User: myaccount
  Date: 2018/9/6
  Time: 下午3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        #d1{
            width: 80%;
            height: 200px;
            border: 1px solid red;
            margin: 0 auto;
        }
        #d2{
            width: 40%;
            height: 200px;
            float: left;
            border:1px solid gold;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center">商品展示界面</h1>

     <c:if test="${type!=1&&type!=2&&type!=3&&type!=4}">
             <div id="d1">
                 <table >
                     <thead ><h3>查询所有商品</h3></thead>

                     <tr>
                         <th>鞋子的id</th>
                         <th>鞋子的名称</th>
                         <th>鞋子的价格</th>
                         <th>鞋子适用人群</th>
                     </tr>
                     <c:forEach var="s" items="${shoesList}">
                             <tr class="d2">
                                 <td><a href="shoes?type=1">${s.shoesId}</a> </td>
                                 <td>${s.shoesName}</td>
                                 <td>${s.shoesPriceSale}</td>
                                 <td>${s.shoesGender}</td>
                             </tr>

                     </c:forEach>
                 </table>
             </div>

     </c:if>
     <c:if test="${type==1}">
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

     </c:if>

     <c:if test="${type==2}">
         <table>
             <thead ><h3>根据鞋子名称查询</h3></thead>
         <tr>
             <th>鞋子的id</th>
             <th>鞋子的名称</th>
             <th>鞋子的价格</th>
             <th>鞋子适用人群</th>
         </tr>
         <c:forEach var="s" items="${shoesList}">
             <tr>
                 <td>${s.shoesId}</td>
                 <td>${s.shoesName}</td>
                 <td>${s.shoesPriceSale}</td>
                 <td>${s.shoesGender}</td>
             </tr>
         </c:forEach>
         </table>
     </c:if>

    <c:if test="${type==3}">

        <table>
            <thead> <h3>根据鞋子价格范围查询</h3></thead>
            <tr>
                <th>鞋子的id</th>
                <th>鞋子的名称</th>
                <th>鞋子的价格</th>
                <th>鞋子适用人群</th>
            </tr>
            <c:forEach var="s" items="${shoesList}">
                <tr>
                    <td>${s.shoesId}</td>
                    <td>${s.shoesName}</td>
                    <td>${s.shoesPriceSale}</td>
                    <td>${s.shoesGender}</td>
                </tr>
            </c:forEach>
        </table>


    </c:if>

    <c:if test="${type==4}">

            <table>
                <thead> <h3>根据鞋子适合人群查询</h3></thead>
            <tr>
                <th>鞋子的id</th>
                <th>鞋子的名称</th>
                <th>鞋子的价格</th>
                <th>鞋子适用人群</th>

            </tr>
            <c:forEach var="s" items="${shoesList1}">
                <tr>
                    <td>${s.shoesId}</td>
                    <td>${s.shoesName}</td>
                    <td>${s.shoesPriceSale}</td>
                    <td>${s.shoesGender}</td>
                </tr>
            </c:forEach>
            </table>


    </c:if>




</body>
</html>
