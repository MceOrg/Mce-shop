<%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/10
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网页头部</title>
    <link rel="stylesheet" href="css/网页头部.css">
</head>
<body>
<div id="head">
    <div id="head-top">
        <ul id="head-right">
            <li>
                <a href="">订单追踪</a>
            </li>
            <li>|</li>
            <li>
                <a href="">邮件订阅</a>
            </li>
            <li>|</li>
            <li>
                <a href="">
                    在线客服<i class="icon icon-service"></i>
                </a>
            </li>
            <li>
                <a href="">
                    <span>登录</span><i class="icon icon-login"></i>
                </a>
            </li>

        </ul>
    </div>
    <div id="head-bottom">
        <div id="head-logo">
            <a href=""><img src="images/logo.png"></a>
        </div>
        <div id="head-bottom-right">
            <div id="head-select">
                <ul>
                    <li>
                        <a class="top-href" href="">男子</a>
                    </li>
                    <li>
                        <a class="top-href" href="">女子</a>
                    </li><li>
                    <a class="top-href" href="">童装</a>
                </li>
                </ul>
                <div class="slice"></div>
                <ul>
                    <li>
                        <a class="top-href" href="">运动</a>
                    </li>
                    <li>
                        <a class="top-href" href="">品牌</a>
                    </li>
                </ul>
                <div  class="slice"></div>
                <ul>
                    <li>
                        <a class="top-href" href="" style="width: 120px">miadidas定制</a>
                    </li>

                </ul>
            </div>
            <div id="head-search">
                <form id="keysearch" action="/search" method="GET">
                    <div class="form-search">

                        <input type="text" value="" autocomplete="off" id="keyword" placeholder="输入关键字">
                        <input type="hidden" id="keywords" name="keyword">
                        <a>
                            <i class="icon icon-search"></i>
                        </a>

                    </div>
                    <div id="search-button">
                        <a id="search-a" href="">搜索</a>
                        <a href="">
                            <i class="icon icon-cart"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</body>
</html>
