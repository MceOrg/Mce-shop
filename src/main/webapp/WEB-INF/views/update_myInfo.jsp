<%@ page import="com.mce.shop.entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: myaccount
  Date: 2018/9/11
  Time: 下午7:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../../resources/css/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../../resources/css/update_myinfo.css">
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
            <div id="head-search">
                <form id="keysearch" action="/search" method="GET">
                    <div class="form-search">

                        <input type="text" value="" autocomplete="off" id="keyword" placeholder="输入关键字">
                        <input type="hidden" id="keywords" name="keyword">
                        <a>
                            <i class="icon icon-search"></i>
                        </a>
                        <!--<a class="search-clear eventssearch-clear">-->
                        <!--<i class="icon icon-search-clear"></i>-->
                        <!--</a>-->

                    </div>
                    <div id="search-button">
                        <button type="submit">搜索</button>
                        <a href="">
                            <i class="icon icon-cart"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="container" class="clearfix">
    <div class="sidebar">
        <ul class="slide-nav">
            <li><a href="/customer?type=6">我的资料</a></li>
            <li><a href="/receiveaddress?type=0">收货地址</a></li>
            <li><a href="">修改密码</a></li>
        </ul>
    </div>
    <div class="info-wrap clearfix">
        <span>我的资料</span>
        <div class="update-info">
            <form action="customer?type=8" method="post">
                <%
                    Customer customer=(Customer)request.getSession().getAttribute("loginCustomer");
                    if(customer.getCustProfile()==null){
                        %>
                <div class="show_custprofile"><img src="${pageContext.request.contextPath}/../../resources/img/head1.jpg" class="pic"></div>
                <%
                    }else {
                        %>
                <div class="show_custprofile"><img src="${pageContext.request.contextPath}/../../resources/img/<%=customer.getCustProfile()%>" class="pic"></div>
                <%
                    }
                %>
                <input type="hidden" name="custprofile" value="">
                <div class="custprofile"><em>更换头像：</em><select id="imageSelect" onchange="setImg(this)">
                    <option value="../../resources/img/head1.jpg">头像一</option>
                    <option value="../../resources/img/head2.jpg" >头像二</option>
                    <option value="../../resources/img/head3.jpg" >头像三</option>
                    <option value="../../resources/img/head4.jpg">头像四</option>
                    <option value="../../resources/img/head5.jpg">头像五</option>
                </select></div>
                <%
                    if (customer.getCustName()==null){
                        %>
                <div class="custname"><em>亲的姓名:</em><input type="text" name="custname" value="" placeholder="请填写亲的昵称"></div>
                <%
                    }else {
                        %>
                <div class="custname"><em>亲的姓名:</em><input type="text" name="custname" value="<%=customer.getCustName()%>"></div>
                <%
                    }
                %>
                <div class="custphone"><em>亲的电话:</em><input type="text" name="custphone" value="<%=customer.getCustPhone()%>" required></div>
                <%
                    if (customer.getCustAge()==null){
                        %>
                <div class="custage"><em>亲的年龄:</em><input type="text" name="custage" value="" placeholder="请填写亲的年龄"></div>
                <%
                    }else {
                        %>
                <div class="custage"><em>亲的年龄:</em><input type="text" name="custage" value="<%=customer.getCustAge()%>"></div>
                <%
                    }
                %>
               <%
                    if (customer.getCustEmail()==null){
                        %>
                <div class="custemail"><em>亲的邮箱:</em><input type="text" name="custemail" value="" placeholder="请填写亲的邮箱"></div>
                <%
                    }else {
                        %>
                <div class="custemail"><em>亲的邮箱:</em><input type="text" name="custemail" value="<%=customer.getCustEmail()%>"></div>
                <%
                    }
               %>

                <input type="submit" value="确认修改">
            </form>
        </div>
    </div>
</div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/../../resources/js/update_myinfo.js"></script>
</html>