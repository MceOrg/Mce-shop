<%--
  Created by IntelliJ IDEA.
  User: 夏露
  Date: 2018/9/8
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>通过手机号找回密码</title>
        <link rel="stylesheet" href="../../resources/css/find_password_byPhone.css">
        <script src="../../resources/js/findPassword.js"></script>
    </head>
    <body>
        <!--**************************** 头部 ************************************-->
        <div id="top">
            <!-- 左侧 -->
            <div class="top-left">
                <ul>
                    <li>
                        <a href=""><img src="img/adidas_logo.png"> </a>
                    </li>
                </ul>
                <ul>
                    <li id="tip" ><a class="top-href" href="">男子</a> </li>
                    <li><a class="top-href" href="">女子</a> </li>
                    <li><a class="top-href" href="">童装</a> </li>
                </ul>
                <div class="slice"></div>
                <ul>
                    <li><a class="top-href" href="">运动</a> </li>
                    <li><a class="top-href" href="">品牌</a> </li>
                </ul>
                <div class="slice"></div>
                <ul>
                    <li><a class="top-href" href="">新品</a> </li>
                    <li><a class="top-href" href="">SALE</a> </li>
                </ul>
            </div>

            <!-- 右侧 -->
            <div class="top-right">
                <div class="right-top">
                    <ul id="head-right">
                        <li>
                            <a href="">订单追踪</a>
                        </li>
                        <li class="slice">|</li>
                        <li>
                            <a href="">邮件订阅</a>
                        </li>
                        <li class="slice">|</li>
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
                <div class="right-bottom">
                    <form id="keySearch" action="" method="get">
                        <div class="form-search">
                            <input type="text" value="" autocomplete="off" id="keyword" placeholder=" 输入关键字">
                            <input type="hidden" id="keywords" name="keyword">
                            <a>
                                <i class="icon icon-search"></i>
                            </a>
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

        <!--****************** 上方 返回 登录 注册 找回密码**********************-->
        <div id="article">
            <div id="list-inline">
                <ul>
                    <li>
                        <a href="javascript:history.go(-1)">
                            <i class="icon icon-round-lightgray-lefts"></i> 返回</a>
                    </li>
                    <li class="divider">丨</li>
                    <li><a href="">登录</a></li>
                    <li class="divider">丨</li>
                    <li><a href="">注册</a></li>
                    <li class="divider">/</li>
                    <li><a href="" class="forget-href-pwd"> 忘记密码</a> </li>
                </ul>
            </div>
        </div>

        <!--******************** 中间 左右 整体 ******************************-->
        <div class="login-float-all">

            <!-- **************** 左侧 ******************  -->
            <div class="login-left">
                <div class="login-box">
                    <h2>忘记密码</h2>
                    <form action="" method="post" onsubmit="return submitTest()">
                        <div id="change_margin_1">
                            <input class="phone" type="text" name="phone" placeholder="请输入您的手机号" onblur="checkPhone()" onfocus="onFocus_1()">
                        </div>
                        <p id="remind_1"></p>

                        <div id="change_margin_2">
                            <input class="securityCode" type="text" name="securityCode" placeholder="请输入手机验证码" onblur="checkCode()" onfocus="onFocus_2()">
                            <div class="float-clearfix">
                                <a id="mobileGetCodeBtn" class="events-btn-git-code" onclick="checkPhone()">获得验证码</a>
                            </div>
                        </div>
                        <p id="remind_2"></p>

                        <div id="change_margin_3">
                            <input class="content-form-signUp" type="submit" value="去重置">
                        </div>
                        <div class="find-phone">
                            <a class="forget-float-left" href="">关闭</a>
                            <a class="forget-float-right" href="">或使用电子邮箱找回></a>
                        </div>
                    </form>
                </div>
            </div>

            <!-- **************** 右侧 ******************  -->
            <div class="login-right">
                <div class="right-login-box"><!-- 中间文字部分  -->
                    <h3>adiCLUB会员相关权益</h3>
                    <div class="login-detail">
                        <p class="login-right-tlt">成为adiCLUB会员并完善个人信息，即可享受更多权益：</p>
                        <div class="register-inner">
                            <div><i class="icon icon-conform"></i><span>安全快捷支付订单</span></div>
                            <div><i class="icon icon-conform"></i><span>随时跟踪订单状态</span></div>
                            <div><i class="icon icon-conform"></i><span>即时收到打折优惠及新品发布信息</span></div>
                            <div><i class="icon icon-conform"></i><span>全场免普通达运费和七天无理由退换货服务</span></div>
                        </div>
                        <div class="login-right-explain">
                            <p>加入adiCLUB会员俱乐部，消费即可获得积分，享受会员权益</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--**************************** 底部 **********************************-->
        <!-- ******************底部整体 **************************-->

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
