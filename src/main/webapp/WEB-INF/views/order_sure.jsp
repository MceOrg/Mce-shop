<%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/6
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/order_sure.css">
</head>
<body>
<div id="head">
    <div id="head-logo">
        <a href=""><img src="images/logo.png"> </a>
    </div>
</div>
<div id="blank"></div>
<div id="middle">
    <div id="middle-left">
        <div id="middle-address">
            <div id="address-title">
                <span>配送地址：</span>
                <a href=""><span>新增地址+</span></a>
            </div>
            <div id="address">
                <div id="address-btn">
                    <input type="radio" style="width: 22px;height: 22px">
                </div>
                <div id="review-address">
                    <div id="address-name">
                        <span class="address-name-1">[默认]</span>
                        <span class="address-name-1">zhaoling</span>
                    </div>
                    <div id="address-all">
                        <div id="address-detail">
                            <ul>
                                <li>安徽省六安市裕安区云露街皖西学院</li>
                                <li>邮编：<span>237000</span></li>
                                <li>电话：<span>18860484144</span></li>
                            </ul>
                        </div>
                        <div id="address-modify">
                            <span><a href="">编辑</a></span>
                            <span>|</span>
                            <span><a href="">删除</a></span>
                        </div>
                    </div>

                </div>
            </div>
            <div id="goods-detail">

            </div>

        </div>
        <div id="middle-2">
            <div id="deliver">
                <div id="deliver-title">
                    <span>配送方式</span>
                    <div id="deliver-box">
                        <div id="address-btn-1">
                            <input type="radio" style="width: 22px;height: 22px">
                        </div>
                        <span><a>普通达： 3-5个工作日到达</a></span>
                        <span class="free">免运费</span>
                    </div>
                </div>
            </div>
            <div id="middle-3">
                <span>支付方式</span>
                <div id="pay">
                    <ul>
                        <li>
                            <input name="select-1" type="radio" style="width: 22px;height: 22px">
                            <img src="images/icon_alipay@2x.png">
                        </li>
                        <li>
                            <input name="select-1"  type="radio" style="width: 22px;height: 22px">
                            <img src="images/icon_wechat@2x.png">
                        </li>
                        <li>
                            <input name="select-1" type="radio" style="width: 22px;height: 22px">
                            <img src="images/icon_onlinepayment@2x.png">
                        </li>
                        <li>
                            <input name="select-1" type="radio" style="width: 22px;height: 22px;background-color: white">
                            <img src="images/icon_cod@2x.png">
                        </li>
                    </ul>
                </div>
            </div>
            <div id="middle-4">
                <a href=""><div id="sure"><span>确认下单<i class="after"></i> </span></div></a>
            </div>

        </div>
    </div>
    <div id="middle-right">
        <div id="goods-title">
            <h3 id="summary">订单摘要:</h3>
        </div>
        <div id="goods-count">
            <span>共</span>
            <span>2</span>
            <span>件</span>
        </div>
        <div id="goods-box">
            <div class="goods-allDetail">
                <div class="goods-info">
                    <img src="images/shoes1-01.jpg">
                    <div class="goods-info-1">
                        <p><a href="">SUPERSTAR 经典鞋</a></p>
                        <p>颜色：<span>亮白</span></p>
                        <p>尺码：<span>36</span></p>
                    </div>
                </div>
                <div class="goods-price-sum">
                    <div class="p1">
                        <p class="p1">￥<span>799.00</span><span>*1</span></p>
                    </div>
                    <div class="p2">
                        <p >799.00</p>
                    </div>

                </div>
            </div>
            <div class="goods-allDetail">
                <div class="goods-info">
                    <img src="images/shoes1-01.jpg">
                    <div class="goods-info-1">
                        <p><a href="">SUPERSTAR 经典鞋</a></p>
                        <p>颜色：<span>亮白</span></p>
                        <p>尺码：<span>36</span></p>
                    </div>
                </div>
                <div class="goods-price-sum">
                    <div class="p1">
                        <p class="p1">￥<span>799.00</span><span>*1</span></p>
                    </div>
                    <div class="p2">
                        <p >799.00</p>
                    </div>

                </div>
            </div>

            <div class="goods-pay">
                <span >商品金额</span>
                <span class="goods-title"><label>￥</label>1499</span>
            </div>
            <div class="goods-pay">
                <span >优惠金额</span>
                <span class="goods-title" id="goods-sub"><label >-￥</label>0</span>
            </div>
            <div class="goods-pay">
                <span >运费</span>
                <span class="goods-title">免运费</span>
            </div>


        </div>

    </div>
</div>

</body>
</html>
