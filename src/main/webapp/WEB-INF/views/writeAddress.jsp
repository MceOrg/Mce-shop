<%@ page import="java.util.List" %>
<%@ page import="com.mce.shop.entity.ReceiveAddress" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../../resources/css/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../../resources/css/address.css">
    <script src="${pageContext.request.contextPath}/../../resources/js/jquery-3.3.1.min.js"></script>
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
            <li><a href="">我的资料</a></li>
            <li><a href="">收货地址</a></li>
            <li><a href="">修改地址</a></li>
        </ul>
    </div>
    <div class="container-address">
        <div class="header">
            <strong>已经保存的收货地址</strong>
            <span>您已经创建 <em id="own-address-num">4</em>个收货地址，最多可创建 <em id="max-address-num">6</em> 个 </span>
            <a  id="toaddnew" style="cursor: pointer">新增收货地址</a>
        </div>
        <div class="body">
            <%--<c:forEach var="Address" items="${alladdress}">--%>
                <%--<input type="text" value="${Address.getAddressRecipientName()}">--%>
            <%--</c:forEach>--%>
            <div>
                <%
                    List<ReceiveAddress> receiveAddresses=(List<ReceiveAddress>) request.getSession().getAttribute("alladdress");
                    if(receiveAddresses!=null){
                        for (ReceiveAddress receiveAddress:receiveAddresses){
                            if (receiveAddress.getIsDefaultAddress()==1){
                            %>
                         <div class="address defaultaddress-wrap">
                             <p style="background: black" class="defaultAddress">默认地址</p>
                             <input type="hidden" value="<%=receiveAddress.getIsDefaultAddress()%>" name="default-status">
                             <input type="hidden" value="<%=receiveAddress.getAddressId()%>" name="addressid">
                    <%}
                        else {
                            %>
                        <div class="address">
                             <p>设为默认地址</p>
                            <input type="hidden" value="<%=receiveAddress.getIsDefaultAddress()%>" name="default-status">
                            <input type="hidden" value="<%=receiveAddress.getAddressId()%>" name="addressid">
                    <%
                        }
                    %>

                    <ul class="address-wrap">
                        <li>
                            <span class="show-custname"><%=receiveAddress.getAddressRecipientName()%></span>
                        </li>
                        <li>
                            <span>
                                <span class="show-province"><%=receiveAddress.getAddressProvince()%></span>
                                <span class="show-city"><%=receiveAddress.getAddressCity()%></span>
                                <span class="show-area"><%=receiveAddress.getAddressArea()%></span>
                                <span class="show-street"><%=receiveAddress.getAddressStreet()%></span>
                                <span class="show-location"><%=receiveAddress.getAddressDetail()%></span>
                            </span>
                            <input type="hidden" value="<%=receiveAddress.getAddressPostCode()%>" name="postcode">
                        </li>
                        <li>
                            <span class="show-phone"><%=receiveAddress.getAddressRecipientTelno()%></span>

                        </li>
                    </ul>
                    <%
                        if (receiveAddress.getIsDefaultAddress()==0){%>
                    <a href="receiveaddress?type=2" class="delete_address">删除</a>
                    <%
                        }
                    %>
                    <a href="javascript:;" class="update_address" style="margin-right: 5%">修改</a>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
    </div>
    <div class="container-address secend-container-address" id="writeAddress">
        <div class="header">
            <strong>新增收货地址</strong>
        </div>
        <form action="" id="update-address">
            <div class="body">
                <div class="address-user">
                    <strong>*</strong>
                    <span>收货人:</span>
                    <input type="text" placeholder="收货人姓名" name="custname" id="custname">
                </div>

                <div class="address-detail">
                    <strong>*</strong>
                    <span>地&nbsp;&nbsp;&nbsp;址:</span>
                    <select id="province">
                        <option value="0">省/直辖市</option>
                    </select>
                    <select id="city">
                        <option value="0">市</option>
                    </select>
                    <select id="area">
                        <option value="0" >区/县</option>
                    </select>
                    <input type="text" id="street" placeholder="街道">
                    <br>
                    <input type="text" id="location" placeholder="详细地址">

                    <div class="address-phone">
                        <strong>*</strong>
                        <span>手&nbsp;&nbsp;&nbsp;机:</span>
                        <input type="text" placeholder="手机号" id="custphone">
                    </div>
                    <div>
                        <input type="text" value="" placeholder="邮政编码(选填)" id="postcode">
                    </div>

                    <div id="address-type">
                        <label for="home"><input type="radio" name="add-type" value="家庭地址" id="home">家庭地址</label>
                        <label for="work"><input type="radio" name="add-type" value="工作地址" id="work">工作地址</label>
                        <label for="other"><input type="radio" name="add-type" value="其他地址" id="other">其他地址</label>
                    </div>


                </div>
                <div id="submit-btn">
                    <a href="javascript:;" id="submit" name="save-address">保存收货地址</a>
                </div>
            </div>
        </form>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/../../resources/js/shipaddress.js"></script>
</html>