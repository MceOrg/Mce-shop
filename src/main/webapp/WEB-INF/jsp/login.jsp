<%--
  Created by IntelliJ IDEA.
  User: 盗版非卖品
  Date: 2018/9/5
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录测试</h1>
<form action="/userLogin" method="post">
    用户名:<input type="text" name="userName">
    密码: <input type="password" name="userPsw">
    <input type="submit" value="登录">
    <a href="/userAddress">查询用户所有地址</a>

</form>
</body>
</html>
