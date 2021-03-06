<%--
  Created by IntelliJ IDEA.
  User: 盗版非卖品
  Date: 2018/9/8
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单详情</title>
    <link rel="stylesheet" href="../../resources/css/order_detail.css">
</head>
<body>
<div class="order-detail-body">
    <div class="header">
        <header class="mt-header" data-spm="a210b">
            <div class="zhanwei"></div>
            <ul>
                <li>
                    <a href="">我的阿迪</a>
                </li>
                <li>
                    <a href="">所有订单</a>
                </li>
                <li>
                    <a href="">待付款</a>
                </li>
                <li>
                    <a href="">待收货</a>
                </li>
                <li>
                    <a href="">待评价</a>
                </li>
            </ul>
        </header>
    </div>
    <div class="order-detail">
        <h3>订单详情</h3>
        <div class="order-inf">
            <div>
                <div class="address">
                    <dl class="address-detail">
                        <dt style="display: inline">收货地址: </dt>
                        <dd style="display: inline">黄泰  广西省博白县XXXXX</dd>
                    </dl>
                    <dl class="transport-mode">
                        <dt style="display: inline">运送方式: </dt>
                        <dd style="display: inline">快递</dd>
                    </dl>
                    <dl class="order-detail-line"></dl>
                </div>
                <hr>
                <div class="order-inf-detail">
                    <h4>订单信息</h4>
                    <div style="margin-left: 20px;margin-right:50px; ">
                        <dl class="order-num" style="display: inline">
                            <dt style="display: inline">订单标号: </dt>
                            <dd style="display: inline">5739274971749</dd>
                        </dl>
                        <dl class="pay-num" style="display: inline;margin-left: 130px;">
                            <dt style="display: inline">付款标号: </dt>
                            <dd style="display: inline">5739274971749</dd>
                        </dl>
                        <dl class="order-create-time" style="display: inline;margin-left: 130px;">
                            <dt style="display: inline">创建时间: </dt>
                            <dd style="display: inline">2018-08-22 15:36:23</dd>
                        </dl>
                    </div>
                    <hr>
                    <div class="order-inf-detail">
                        <div style="margin-left: 20px;margin-right:50px; ">
                            <dl class="order-sent-time" style="display: inline">
                                <dt style="display: inline">发货时间: </dt>
                                <dd style="display: inline">2018-08-22 15:57:53</dd>
                            </dl>
                            <dl class="pay-time" style="display: inline;margin-left: 90px;">
                                <dt style="display: inline">付款时间: </dt>
                                <dd style="display: inline">2018-08-22 15:57:53</dd>
                            </dl>
                            <dl class="finish-time" style="display: inline;margin-left: 90px;">
                                <dt style="display: inline">成交时间: </dt>
                                <dd style="display: inline">2018-08-22 15:36:23</dd>
                            </dl>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <table class="shoes-order" style="border: 1px black solid;width: 80%;margin: 0 auto;margin-bottom: 10px">
                            <tr>
                                <td>鞋子</td>
                                <td>鞋子属性</td>
                                <td>状态</td>
                                <td>单价</td>
                                <td>数量</td>
                                <td>商品总价</td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="width: 100px;height: 100px">
                                        <div style="float: left">
                                            <img src="../../resources/img/jd_logo.JPG" style="width: 90%;height: 90%;">
                                        </div>
                                        <div style="float: left">
                                            <span >你买下了京东XXXXXX</span>
                                        </div>

                                    </div>
                                </td>
                                <td>男鞋</td>
                                <td>已确认收货</td>
                                <td>99</td>
                                <td>1</td>
                                <td>99</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ****************************底部************************ -->
<div style="width: 100%;height: 800px;margin: 0 auto;">
    <iframe height="100%" width="100%" src="bottom.html" scrolling="no"></iframe>
</div>

</body>
</html>