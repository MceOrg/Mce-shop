<%--
  Created by IntelliJ IDEA.
  User: 夏露
  Date: 2018/9/8
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>购物车</title>
    </head>
    <link rel="stylesheet" href="../../resources/css/cart.css">
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

        <!--**************************** 购物车 左侧 ************************************-->
        <div id="d1">
            <div id="d2">
                <div id="cart-bar">
                    您的购物袋
                </div>
                <div id="cart-thread">
                    <input type="checkbox" name="selectAll" onclick="selectAll(this)"/><label>全选</label>
                </div>
                <div class="three-list">
                    <ul>
                        <li>
                            <div class="goods-left">
                                <input type="checkbox" name="goods" onchange="setGoodsNum()">
                                <img src="img/shoes_01.png">
                            </div>
                        </li>
                        <li>
                            <div class="goods-desc">
                                <div class="shoes-desc">
                                    <span class="span1">NMD_R1 W 经典鞋</span><br>
                                    <span class="span2">B37649</span>
                                </div>
                                <div class="shoes-desc">
                                    <span class="span2">颜色:</span><span class="span1"> 1号黑色/纯粉</span><br>
                                    <span class="span2">尺码:</span><span class="span1"> 4</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="goods-right">
                                <div><label>单价:￥</label><label>1999</label></div>
                                <div>
                                    <input type="button" value="-" onclick="subtract(this)">
                                    <input type="button" value="0">
                                    <input type="button" value="+" onclick="add(this)">
                                </div>
                                <div><label>小计:￥</label><label name="subtotal">0</label></div>
                                <div> <a href="">删除</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="three-list">
                    <ul>
                        <li>
                            <div class="goods-left">
                                <input type="checkbox" name="goods" onchange="setGoodsNum()">
                                <img src="img/shoes_02.png">
                            </div>
                        </li>
                        <li>
                            <div class="goods-desc">
                                <div class="shoes-desc">
                                    <span class="span1">adidas neo QUESTAR X BYD 休闲鞋</span><br>
                                    <span class="span2">女子 adidas neo</span>
                                </div>
                                <div class="shoes-desc">
                                    <span class="span2">颜色:</span><span class="span1"> 1号黑色/纯粉</span><br>
                                    <span class="span2">尺码:</span><span class="span1"> 4</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="goods-right">
                                <div><label>单价:￥</label><label>629</label></div>
                                <div>
                                    <input type="button" value="-" onclick="subtract(this)">
                                    <input type="button" value="0">
                                    <input type="button" value="+" onclick="add(this)">
                                </div>
                                <div><label>小计:￥</label><label name="subtotal">0</label></div>
                                <div> <a href="">删除</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--**************************** 购物车 右侧 ************************************-->
            <div id="d3">
                <div class="div1">
                    <div id="order-remark">
                        订单摘要: <span class="number" id="goodsAmount">0</span><span>件</span>
                    </div>
                    <div class="order-list">
                        <div class="order-list-one">
                            <div class="order-list-one-left">商品金额</div>
                            <div class="order-list-one-right">￥<span class="shoes-price" id="sum_price">0.00</span></div>
                        </div>
                        <div class="order-list-one">
                            <div class="order-list-one-left">优惠金额</div>
                            <div class="order-list-one-right1">-￥<span id="benefit-price">0.00</span></div>
                        </div>
                        <div class="order-list-one">
                            <div class="order-list-one-left1">商品总计</div>
                            <div class="order-list-one-right">￥<span class="all-price" id="all-shoes-price">0.00</span></div>
                        </div>
                    </div>
                    <div class="balance-submit">
                        <form method="post" action="" onsubmit="">
                            <input class="balance" type="submit" value="结算" >
                            <i class="icon icon-submit"></i>
                        </form>
                    </div>
                </div>
                <div class="div2">
                    <h3>我们接受下列付款方式:</h3>
                    <ul>
                        <li><a href=""><i class="icon icon-payZFB"></i></a></li>
                        <li><a href=""><i class="icon icon-payWX"></i></a></li>
                        <li><a href=""><i class="icon icon-payZXZF"></i></a></li>
                        <li><a href=""><i class="icon icon-payHDFK"></i></a></li>
                    </ul>
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
    <script src="{pageContext.request.contextPath}/../../resources/js/cart.js"></script>

</html>
