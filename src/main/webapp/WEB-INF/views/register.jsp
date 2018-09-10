<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../../resources/css/register.css" />
    <link rel="stylesheet" href="{pageContext.request.contextPath}/../../resources/css/buttons.css" />
</head>
<body>
<div id="header-title"><a href="">MCE</a></div>
<div id="bg-wrap">
    <img src="{pageContext.request.contextPath}/../../resources/img/bg.jpg">
    <div id="register_wrap">
        <div id="title">
            <span>会员注册</span>
            <div>已注册可<a href="customer?type=3">直接登录</a></div>
        </div>
        <div id="body">
            <form action="" id="registerform" method="post">
                <div id="tel_tip" class="clearfix">
                    <div id="tel_wrap">
                        <input type="text" name="tel" id="tel" value="" placeholder="请输入手机号" onblur="showTelTips()"/>
                        <span id="tel_logo"></span>
                    </div>
                    <div class="tip">
                        <span class="text" id="tip2tel1">手机号不能为空</span>
                        <span class="text" id="tip2tel2">请填写正确的手机号</span>
                        <span class="text" id="tip2tel3">该手机号已被注册</span>
                        <span class="text" id="tip2tel4">该手机号可用</span>
                    </div>
                </div>
                <div id="validate_tip">
                    <div id="validate_wrap">
                        <input type="text" name="validate" id="validate"
                               class="reg_input" onblur="lostInput()" />
                        <a href="javascript:getRegCode();" class="reg_phone" id="getvalidate">获取验证码</a>
                        <span id="val_logo"></span>
                    </div>
                    <div class="tip">
                        <span class="text">请输入6位数字手机验证码</span>
                    </div>
                </div>
                <div id="password_tip">
                    <div id="pwd_wrap">
                        <input type="password" name="password" id="password" value="" placeholder="密码由6-20位字母，数字组合" onblur="showPwdTips()" />
                        <span id="pwd_logo"></span>
                    </div>
                    <div class="tip">
                        <span class="text" id="tip2pwd1">密码不能为空</span>
                        <span class="text" id="tip2pwd2">密码由6-20位字母，数字和符号组合</span>
                    </div>
                </div>
                <div id="repassword_tip">
                    <div id="repwd_wrap">
                        <input type="password" name="repassword" id="repassword" value="" placeholder="请再次输入上面的密码" onblur="valPwd()"  />
                        <span id="repwd_logo"></span>
                    </div>
                    <div class="tip">
                        <span class="text" id="tip2repwd1">请再次输入密码</span>
                        <span class="text" id="tip2repwd2">两次密码输入不一致</span>
                    </div>
                </div>
                <div id="clause_tip">
                    <div class="tips">
                        <div id="clause_wrap">
                            <span><input type="checkbox" name="accept_clause" id="accept_clause" value="" onclick="acceptClause()" /></span>
                            <label for="accept_clause" id="clause">
                                我已阅读并接受以下条款 :
                                <a href="javascript:;" target="_blank">《MCE服务条款》</a>
                                <a href="javascript:;" target="_blank">《隐私条款》</a>
                                <a href="javascript:;" target="_blank">《MCE用户服务协议》</a>
                                <a href="javascript:;" target="_blank">《MCE信用服务协议》</a>
                            </label>
                        </div>
                        <span class="text" id="tip2accept">接受服务条款才能注册</span>
                    </div>
                </div>

                <button id="register_sub" class="button button-large button-plain button-borderless" type="submit" onclick="finalVal()">
                    立即注册
                </button>
            </form>
        </div>
    </div>
</div>
<div id="foot-title">
    <div class="container">
        <p id="flash-font">Mce,Play difference</p>
    </div>
    <span>Copyright © 2018-2025 江南名鞋商城 Mce.com 保留一切权利。</br>客服热线：400-123-8888</span>
</div>
</body>
<script type="text/javascript" src="{pageContext.request.contextPath}/../../resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="{pageContext.request.contextPath}/../../resources/js/register.js"></script>
</html>

