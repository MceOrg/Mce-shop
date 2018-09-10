<%@ page import="com.mce.shop.entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: 盗版非卖品
  Date: 2018/9/8
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>江南名鞋厂</title>
    <link rel="stylesheet" href="../../resources/css/mainPage.css">
    <script src="../../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/mainPage.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->

    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<!-- ****************************头部************************ -->
<div id="top">
    <div id="top-left">
        <a class="logo" href="">
            <img src="../../resources/img/adidas-logo.png">
        </a>
        <!--<a href="">adidas旗舰店</a>-->
        <a href="">收藏本店</a>

    </div>
    <div id="top-right">
        <%
           Customer customer = (Customer) request.getSession().getAttribute("loginCustomer");
           if (customer!=null){
               %>

            <a href="receiveaddress?type=0" style="color: #0f0f0f"><%=customer.getCustName()%></a>
            <a href="customer?type=5" style="color: #0f0f0f">退出</a>

        <%
           }else {
               %>
        <a href="customer?type=3" style="color: #0f0f0f">登录</a>
        <a href="customer?type=1" style="color: #0f0f0f">注册</a>
        <%
           }
        %>




    </div>
</div>


<!-- ****************************导航************************ -->
<div id="nav">
    <ul>
        <li >
            <div class="my-dropdown">
                <a href="" class="dropbtn">男子</a>
                <div class="dropdown-content">
                    <a href="">男子经典</a>
                    <a href="">男子新品</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>

        </li>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">女子</a>
                <div class="dropdown-content">
                    <a href="">女子经典</a>
                    <a href="">女子新品</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">童装</a>
                <div class="dropdown-content">
                    <a href="">童装经典</a>
                    <a href="">童装新品</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
    </ul>
    <div class="slice">

    </div>
    <ul>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">运动</a>
                <div class="dropdown-content">
                    <a href="">运动经典</a>
                    <a href="">运动新品</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">品牌</a>
                <div class="dropdown-content">
                    <a href="">品牌经典</a>
                    <a href="">品牌新品</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
    </ul>
    <div class="slice">

    </div>
    <ul>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">新品</a>
                <div class="dropdown-content">
                    <a href="">新品经典</a>
                    <a href="">新品发售</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
        <li>
            <div class="my-dropdown">
                <a href="" class="dropbtn">SALE</a>
                <div class="dropdown-content">
                    <a href="">新品经典</a>
                    <a href="">新品发售</a>
                    <a href="">限量发售</a>
                    <a href="">本周热卖</a>
                </div>
            </div>
        </li>
    </ul>
</div>

<!-- ****************************广告推广************************ -->
<div class="userDefineArea">
    <img src="../../resources/img/1920-630-lh-pod.jpg"> <a href="">adidas旗舰店</a>

</div>

<div id="content">
    <!-- ****************************本周热卖************************ -->
    <div class="style-guess-you-like">
        <h3>本周热卖</h3>
    </div>

    <div class="swiper-wapper">
        <div class="item">
            <a href="items.html">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>
        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>

    </div>

    <!-- ****************************本月主推************************ -->

    <div class="style-guess-you-like">
        <h3>本月主推</h3>
    </div>

    <div class="swiper-wapper">
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>
        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>
        <div class="item">
            <a href="">
                <img src="../../resources/img/shooes1.jpg">
            </a>
            <div class="pro-intro">
                <a href="">POD-S3.1 经典鞋></a>
                <span>￥1,099</span>
            </div>

        </div>
    </div>

    <nav aria-label="Page navigation" class="text-center">
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>




<!-- ****************************底部************************ -->
<div id="footer">
    <!-- 底部 top -->
    <div class="footer-top">
        <!-- 中间文字 -->
        <div class="footer-top-container">
            <ul>
                <li class="contacted">
                    联系我们</li>
                <li>
                    <p><a href="" >
                        <i class="icon contact-us-service"></i>
                        在线客服
                    </a>
                    </p>
                    <p class="remarks">(仅支持中文) </p>
                </li>
                <li>
                    <p><a href="">
                        <i class="icon contact-us-tel"></i>
                        400-999-5999</a> </p>
                    <p class="remarks">(仅支持中文) </p>
                </li>
                <li>
                    <p><a href="">
                        <i class="icon contact-us-email"></i>
                        service@adidas.com</a> </p>
                    <p class="remarks">(中英文均支持) </p>
                </li>
                <li class="contacted-us-time">9:00 - 21:00</li>

                <li class="order-tracking"><a href="">订单跟踪</a></li>
            </ul>
        </div>
    </div>
    <!-- 底部 中间 -->
    <div class="footer-cont">
        <div class="column-container">
            <div class="list">
                <ul>
                    <span>产品</span>
                    <li><a href="">鞋类</a> </li>
                    <li><a href="">服装</a> </li>
                    <li><a href="">配件</a> </li>
                    <li><a href="">新品上市</a> </li>
                    <li><a href="">全部折扣</a> </li>
                </ul>
            </div>
            <div class="list">
                <ul>
                    <span>运动</span>
                    <li><a href="">跑步</a> </li>
                    <li><a href="">训练</a> </li>
                    <li><a href="">足球</a> </li>
                    <li><a href="">篮球</a> </li>
                    <li><a href="">户外</a> </li>
                </ul>
            </div>
            <div class="list">
                <ul>
                    <span>帮助中心</span>
                    <li><a href="">关于员工</a> </li>
                    <li><a href="">尺码表</a> </li>
                    <li><a href="">adiCLUB会员</a> </li>
                    <li><a href="">门店查询</a> </li>
                    <li><a href="">关于我们</a> </li>
                    <li><a href="">企业社会责任</a> </li>
                    <li><a href="">Confirmed app</a> </li>
                </ul>
            </div>
            <div class="list">
                <ul>
                    <span>网站政策</span>
                    <li><a href="">使用条款</a> </li>
                    <li><a href="">隐私声明</a> </li>
                    <li><a href="">物流配送规则</a> </li>
                    <li><a href="">退货规则</a> </li>
                    <li><a href="">定制和印制服务条款</a> </li>
                    <li><a href="">adiCLUB会员规则</a> </li>
                </ul>
            </div>
            <div class="list">
                <span class="title">关注我们</span>
                <ul >
                    <li class="list-icon">
                        <a href="">
                            <i class="icon icon-WeiBo"></i>
                        </a>
                    </li>
                    <li class="list-icon">
                        <a href="">
                            <i class="icon icon-WeiXin"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="footer-Payment-method">
            <ul>
                <li class="title1">我们接受下列付款方式:</li>
                <li><a href=""><i class="icon icon-payZFB"></i></a></li>
                <li><a href=""><i class="icon icon-payWX"></i></a></li>
                <li><a href=""><i class="icon icon-payZXZF"></i></a></li>
                <li><a href=""><i class="icon icon-payHDFK"></i></a></li>
            </ul>
            <ul class="footer-group-purchase">
                <li class="title1">企业团购热线及邮箱:</li>
                <li class="title1">团购热线:021-2525 6881</li>
                <li class="title">团购邮箱:adidas.b2b@adidas.com</li>
                <li class="title">(仅限采购金额10万以上)</li>
            </ul>
        </div>




    </div>
    <!--底部 底部-->
    <div class="footer-cont-bottom">
        <div class="footer-cont-bottom-left">
            <ul >
                <li class="bottom-li" id="bottom-li-one">
                    <i class=" icon icon-china"></i>
                    <span>中国</span>
                </li>
                <li class="bottom-li"><a href="">隐私声明</a></li>
                <li class="bottom-li"><a href="">使用条款</a></li>
                <li class="bottom-li"><a href="">网站地图</a></li>
            </ul>
        </div>
        <div class="footer-cont-bottom-right">
            <ul>
                <li><i class=" icon icon-ebs1"></i><span>苏ICP备14048805号-1</span></li>
                <li><span>2017 adidas</span></li>
                <li><i class=" icon icon-ebs2"></i><span>苏公网安备 320590002001401号</span></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
