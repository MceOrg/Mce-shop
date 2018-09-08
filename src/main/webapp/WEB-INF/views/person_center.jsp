<%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/7
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="../../resources/css/person_center.css">
</head>
<body>
<div id="head">
    <div id="head-top">
        <!---->
    </div>
    <div id="head-bottom">
        <div id="head-logo">
            <a href=""><img src="../../resources/img/logo.png"></a>
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

        </div>
    </div>
</div>
<div id="article">
    <div id="list-inline">
        <ul>
            <li>
                <a href="javascript:history.go(-1)">
                    <i class="icon icon-round-lightgray-lefts"></i> 返回</a>
            </li>
            <li class="divider">丨</li>
            <li>
                <a href="">首页</a>
            </li>
            <li class="divider">/</li>
            <li><a href=""> 我的账户首页</a> </li>
        </ul>
    </div>
</div>
<div id="myAccount">
    <div id="myAccount-left">
        <div id="myAccount-left-top">
            <div class="myAccount-tit">
                <div id="title-middle">
                    <i class="icon icon-head-portrait"></i>
                    <p>我的账户</p>
                </div>

            </div>
            <div class="person-info" >
                <p>个人信息</p>
            </div>
            <div class="person-info-1" style="">
                <a href=""> <p>我的账户首页</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>我的个人信息</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>我的地址簿</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>我的积分</p></a>
            </div>
            <div class="person-info">
                <p>订单信息</p>
            </div>
            <div class="person-info-1">
                <a href=""><p>我的订单</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>我的退单</p></a>
            </div>
        </div>
        <div id="myAccount-left-bottom">
            <div id="help">
                <p class="item-name">
                    <i class="icon icon-help"></i>帮助</p>
            </div>
            <div class="person-info-1">
                <a href=""><p>关于订单</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>关于支付</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>物流配送</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>退款退货</p></a>
            </div>
            <div class="person-info-1">
                <a href=""><p>会员规则</p></a>
            </div>

        </div>
    </div>
    <div id="myAccount-right">
        <div id="myAccount-right-top">
            <div id="account-detail">
                <div class="account-detail-title">
                    <p>账户信息<span>（如需修改邮箱地址和手机号请联系客服）</span></p>
                </div>
                <ul>
                    <li> <p>手机号：<span>18860485432</span></p></li>
                    <li>
                        <p>邮箱地址：<span><a href="">添加邮箱地址</a> </span></p></li>
                    <li><a  href="" class=" modify e-modify-password">修改密码<i class="icon modify-icon"></i></a></a></li>
                </ul>

            </div>
        </div>
        <div id="myAccount-right-bottom">
            <div id="person-detail">
                <div class="account-detail-title">
                    <p>个人信息<span>（完整填写姓名、性别、生日、城市和邮箱信息，将可获得50点积分作为奖励）</span></p>
                </div>
                <ul>
                    <li> <p>姓名：<span></span></p></li>
                    <li>
                        <p>性别：<span> </span></p>
                    </li>
                    <li>
                        <p>生日：</p>
                    </li>
                    <li>
                        <p>省市/城市：</p>
                    </li>
                    <li>
                        <div id="modify">
                            <a href=""><span>修改</span></a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

    </div>

</div>

</body>

</body>
</html>
