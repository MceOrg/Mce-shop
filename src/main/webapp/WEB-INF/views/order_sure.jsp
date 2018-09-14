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
        <a href=""><img src="../../resources/img/logo.png"> </a>
    </div>
</div>
<div id="blank"></div>
<div id="middle">
    <div id="middle-left">
        <div id="middle-address">
            <div id="address-title">
                <span>配送地址：</span>
                <a href=""><span>更改地址</span></a>
            </div>
            <div id="address">
                <div id="address-btn">
                    <input type="radio" checked="checked" style="width: 22px;height: 22px">
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
                        <%--<div id="address-modify">--%>
                            <%--<span><a href="">更改地址</a></span>--%>

                        <%--</div>--%>
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
                            <input type="radio" checked="checked" style="width: 22px;height: 22px">
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
                            <input name="select-1" checked="checked" type="radio" style="width: 22px;height: 22px">
                            <img src="../../resources/img/icon_alipay@2x.png">
                        </li>
                        <li>
                            <input name="select-1"  type="radio" style="width: 22px;height: 22px">
                            <img src="../../resources/img/icon_wechat@2x.png">
                        </li>
                        <li>
                            <input name="select-1" type="radio" style="width: 22px;height: 22px">
                            <img src="../../resources/img/icon_onlinepayment@2x.png">
                        </li>
                        <li>
                            <input name="select-1" type="radio" style="width: 22px;height: 22px;background-color: white">
                            <img src="../../resources/img/icon_cod@2x.png">
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
                    <img src="../../resources/img/shoes1-01.jpg">
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
                    <img src="../../resources/img/shoes1-01.jpg">
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

<!--/**********************bottom*****************************/-->
<div id="footer-top">
    <div id="footer-top-container">
        <ul class="none-sm">
            <li class="contacted">联系我们</li>
            <li>
                <p>
                    <a href=""><i class="icon icon-contact-us-service"></i> <span> 在线客服</span> 在线客服</a>
                </p>
                <p class="remark">(仅支持中文)</p>
            </li>
            <li>
                <p>
                    <a href=""><i class="icon icon-contact-us-tel"></i><span> 400-999-5999</span></a>
                </p>
                <p class="remark">(仅支持中文)</p>
            </li>
            <li>
                <p>
                    <a href=""><i class="icon icon-contact-us-email"></i><span> service@adidas.com</span></a>
                </p>
                <p class="remark">(中英文均支持)</p>
            </li>
            <span>9:00 - 21:00</span>
            </li>
            <li ><p><a href="">订单追踪</a></p></li>
        </ul>
    </div>
</div>
<div id="footer-cont">
    <div class="footer-cont-top">
        <div class="footer-cont-top1 ">
            <ul class="">
                <li class="title">产品</li>
                <li class=""><a href=""> 鞋类</a></li>
                <li class=""><a href="" >服装</a></li>
                <li class=""><a href="" >配件</a></li>
                <li class=""><a href="" >新品上市</a></li>
                <li class=""><a href="" >全部折扣</a></li>
            </ul>
        </div>
        <div class="footer-cont-top2">
            <ul>
                <li class="title">运动</li>
                <li class=""><a href="" >跑步</a></li>
                <li class=""><a href="" >训练</a></li>
                <li class=""><a href="" >足球</a></li>
                <li class=""><a href="" >篮球</a></li>
                <li class=""><a href="" >户外</a></li>
            </ul>
        </div>
        <div class="footer-cont-top3 ">
            <ul>
                <li class="title"><a href="" >帮助中心</a></li>
                <li class=""><a href="" >关于员工</a></li>
                <li class=""><a href="" >尺码表</a></li>
                <li class=""><a href="" >adiCLUB会员</a></li>
                <li class=""><a href="" >门店查询</a></li>
                <li class=""><a href="" >关于我们</a></li>
                <li class=""><a href="" >企业社会责任</a></li>
                <li class=""><a href="" >Confirmed app</a></li>
            </ul>
        </div>
        <div class="footer-cont-top4 ">
            <ul>
                <li class="title">网站政策</li>
                <li class=""><a href="" >使用条款</a></li>
                <li class=""><a href="" >隐私声明</a></li>
                <li class=""><a href="" >物流配送规则</a></li>
                <li class=""><a href="" >退货规则</a></li>
                <li class=""><a href="" >定制和印制服务条款</a></li>
                <li class=""><a href="" >adiCLUB会员规则</a></li>
            </ul>
        </div>
        <div class="footer-cont-top5 ">
            <ul class="footer-share">
                <li class="title">关注我们</li>
                <li class="title1"><a href=""><i class="icon icon-sina"></i> </a></li>
                <li class="title1"><a href=""><i class="icon icon-wechat"></i> </a></li>
            </ul>
        </div>
        <ul class="footer-Payment-method">
            <li class="title">我们接受下列付款方式：</li>
            <li><span><i class="icon icon-Payment-method"></i></span></li>
            <li><span><i class="icon icon-Payment-method-1"></i></span></li>
            <li><span><i class="icon icon-Payment-method-2"></i></span></li>
            <li><span><i class="icon icon-Payment-method-3"></i></span></li>
        </ul>
        <ul class="footer-group-purchase ">
            <li>企业团购热线及邮箱：</li>
            <li >团购热线：021-2525 6881</li>
            <li >团购邮箱：adidas.b2b@adidas.com</li>
            <li >（仅限采购金额10万以上）</li>
        </ul>
    </div>
</div>

<div id="footer-cont-bottom">
    <div class="footer-cont-bottom1">
        <ul>
            <li><i class="icon icon-china">中国</i>  </li>
            <li><a href="">隐私声明</a> </li>
            <li><a href="" >使用条款</a></li>
            <li><a href="" >网站地图</a></li>
        </ul>
    </div>
    <div class="footer-cont-bottom2">
        <ul>
            <li>苏ICP备14048805号-1</li>
            <%--<li><i class="icon icon-ebs1"></i></li>--%>
            <li>2017 adidas </li>
            <%--<li><a href="" ><i class="icon icon-ebs2">苏公网安备 32059002001401号</i></a> </li>--%>
            <li>苏公网安备</li>
        </ul>
    </div>

</div>


</body>
</html>
