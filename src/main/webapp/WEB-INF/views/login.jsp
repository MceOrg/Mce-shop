<%--
  Created by IntelliJ IDEA.
  User: myaccount
  Date: 2018/9/4
  Time: 下午6:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/login.css"/>
</head>
<body>
<div id="header-title"><a href="">MCE</a></div>
<div id="bg-wrap">
    <div id="login_wrap">
        <div id="title">账户登录</div>
        <div id="body">
            <form action="login" method="post">
                <div id="username_tip" class="clearfix">
                    <div id="username_wrap">
                        <input type="text" name="username" id="username" value="" placeholder="手机号/用户名/邮箱" />
                        <span id="username_logo"></span>
                    </div>
                    <div class="tip" >
                        <span class="text" id="tip2u">您的账号有误</span>
                    </div>
                </div>
                <div id="password_tip" class="clearfix">
                    <div id="password_wrap">
                        <input type="password" name="password" id="password" value="" placeholder="密码" />
                        <span id="password_logo"></span>
                    </div>
                    <div class="tip">
                        <span class="text">请输入密码</span>
                    </div>
                </div>
                <div id="remb">
                    <input type="checkbox" name="rememberpwd" id="rememberpwd" value="" />
                    <label for="rememberpwd">记住用户名</label>
                    <a href="javascript:;">忘记密码</a>
                </div>
                <button type="submit" id="login">登录</button>
            </form>
            <a  id="register" href="register.html">免费注册</a>
        </div>

    </div>
</div>
<div id="foot-title">
    <div class="container">
        <p>Mce,Play difference</p>
    </div>
    <span>Copyright © 2018-2025 江南名鞋商城 Mce.com 保留一切权利。</br>客服热线：400-123-8888</span>
</div>
</body>
<script src="../../resources/js/login.js"></script>
</html>