<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
    <%--<%
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
--%>
    <c:choose>
        <c:when test="${!empty msg}">
            <h4>${msg}</h4>
        </c:when>
        <c:otherwise>
            <table border="1">
                <caption>鞋子信息表</caption>
                <tr>
                    <th>鞋子Id</th>
                    <th>鞋名称</th>
                    <th>价格</th>
                    <th>鞋描述</th>
                    <th>鞋销量</th>
                    <th>适用性别(0:男性,1:女性,2:通用)</th>
                    <th>鞋状态(0:在售,1:下架)</th>
                </tr>
                <c:forEach var="shoes" items="${pageModel.modelList}"   >
                    <tr>
                        <td>${shoes.shoesId}</td>
                        <td>${shoes.shoesName}</td>
                        <td>${shoes.shoesPriceSale}</td>
                        <td>${shoes.shoesDesc}</td>
                        <td>${shoes.shoesSaleCount}</td>
                        <td>${shoes.shoesGender}</td>
                        <td>${shoes.shoesStatus}</td>
                        <td> <a href="javascript:deleteConfirm(${c.custId});">删除</a></td>
                    </tr>
                </c:forEach>


            </table>

            <div id="page">
                <c:if test="${pageModel.currentPageCode !=1}">
                    <a href="${pageContext.request.contextPath}/shoes/getByPage?page=${pageModel.currentPageCode-1}">上一页</a>
                </c:if>

                当前是${pageModel.currentPageCode} 页

                <c:if test="${pageModel.currentPageCode !=pageModel.totalPages}">
                    <a href="${pageContext.request.contextPath}/shoes/getByPage?page=${pageModel.currentPageCode+1}">下一页</a>
                </c:if>

                共${pageModel.totalPages}页
                共有${pageModel.totalRecord} 条用户数据
            </div>


        </c:otherwise>
    </c:choose>


</body>
</html>
