<%--
  Created by IntelliJ IDEA.
  User: 盗版非卖品
  Date: 2018/9/8
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link rel="stylesheet" href="../../resources/css/order.css">
</head>
<body>
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
<div class="search">
    <form class="container" >
        <div class="search-mod">
            <input type="text" placeholder="输入商品标题或订单号进行搜索" class="search-mod__order-search-input">
            <button type="submit" class="search-mod__order-search-button" >订单搜索</button>
        </div>
    </form>
</div>
<div class="order-body">
    <table class="order-header">
        <tbody>
        <tr>
            <th>宝贝</th>
            <th>单价</th>
            <th>数量</th>
            <th>商品操作</th>
            <th>实付款</th>
            <th >交易状态</th>
            <th >交易操作</th>
        </tr>
        </tbody>
    </table>
    <table class="order-detail">
        <tr>
            <td>
                <span>时间: </span>
                <span class="order-time">2018-9-14</span>
                <span>订单编号: </span>
                <span class="order-number">12442344234999</span>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <div class="order-photo">
                        <img src="../../resources/img/001.jpg" class="order-photo-img">
                    </div>
                    <div class="order-desc">
                        <span>漂亮的妹子</span>
                    </div>
                    <div class="order-price-div">
                        <span>$</span>
                        <span class="order-price">69</span>
                    </div>
                    <div class="good-num-div">
                        <span class="good-num">2</span>
                    </div>
                    <div class="order-operation">
                        <a style="text-decoration: none" href="">商品退换货</a>
                    </div>
                    <div class="order-read-price-div">
                        <span>$</span>
                        <span class="order-read-price">99</span>
                    </div>
                    <div class="order-status-div">
                        <span class="good-status">卖家已发货</span>
                        <a class="order-detail" href="">订单详情</a>
                        <a class="good-express" href="">查看物流</a>
                    </div>
                    <div class="check-order-div">
                        <button class="check-order-btn">确认收货</button>
                        <a href="" class="grt-ticket">申请开票</a>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <span>时间: </span>
                <span class="order-time">2018-9-14</span>
                <span>订单编号: </span>
                <span class="order-number">12442344234999</span>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <div class="order-photo">
                        <img src="../../resources/img/001.jpg" class="order-photo-img">
                    </div>
                    <div class="order-desc">
                        <span>漂亮的妹子</span>
                    </div>
                    <div class="order-price-div">
                        <span>$</span>
                        <span class="order-price">69</span>
                    </div>
                    <div class="good-num-div">
                        <span class="good-num">2</span>
                    </div>
                    <div class="order-operation">
                        <a style="text-decoration: none" href="">商品退换货</a>
                    </div>
                    <div class="order-read-price-div">
                        <span>$</span>
                        <span class="order-read-price">99</span>
                    </div>
                    <div class="order-status-div">
                        <span class="good-status">卖家已发货</span>
                        <a class="order-detail" href="">订单详情</a>
                        <a class="good-express" href="">查看物流</a>
                    </div>
                    <div class="check-order-div">
                        <button class="check-order-btn">确认收货</button>
                        <a href="" class="grt-ticket">申请开票</a>
                    </div>
                </div>
            </td>
        </tr>
    </table>

</div>

<!-- ****************************底部************************ -->
<div style="width: 100%;height: 800px;margin: 0 auto;">
    <iframe height="100%" width="100%" src="bottom.html" scrolling="no"></iframe>
</div>

</body>
</html>
