<%--
  Created by IntelliJ IDEA.
  User: myaccount
  Date: 2018/9/6
  Time: 下午3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        a{
            text-decoration: none;
            color:#1B9AF7;
            line-height: 40px;
        }
        a:hover{
            color: #1d94d1;
        }
    </style>
</head>

<body>
<a href="shoes?type=0">全部商品</a><br>
<a href="shoes?type=2&shoesname=AJ">根据鞋子的名称查询</a><br>
<a href="shoes?type=3&minPrice=600&maxPrice=1000">根据鞋子的价格范围查询</a><br>
<a href="shoes?type=4&gender=1">根据鞋子的性别查询</a><br>


</body>
</html>
