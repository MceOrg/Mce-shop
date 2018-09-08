<%--
  Created by IntelliJ IDEA.
  User: 15643
  Date: 2018/9/6
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>shoes_detail</title>
    <link rel="stylesheet" href="../../resources/css/shoes_detail.css">
    <script src="../../resources/js/shoes_detail"></script>

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
<div id="tip1">
    <ul>
        <li><a href=""><img class="im" src="../../resources/img/icon_free@2x.png"><span>全场免运费</span>  <i class="icon icon-round-gray-rights"></i></a> </li>
        <li>
            <a href=""><img class="im" src="../../resources/img/icon_timer@2x.png"><span>尊享当日达、次日达、次晨达  </span><i class="icon icon-round-gray-rights"></i></a>
        </li>
        <li><a href=""><img class="im" src="../../resources/img/icon_returnorder.png"><span>注册会员支持货到付款</span>  <i class="icon icon-round-gray-rights"></i></a> </li>
    </ul>
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
            <li><a href=""> POD-S3.1 W 经典鞋</a> </li>
        </ul>
    </div>
</div>
<div id="product">
    <div id="product-photo" >
        <div id="product-col1">
            <div id="small-photo">
                <div class="scroll-btn-prev is-disabled">
                    <a><i>∧</i></a>
                </div>

                <ul>
                    <li>
                        <a href="">
                            <img src="../../resources/img/shoes1-02.jpg" onclick="switchPhoto(this) ">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../../resources/img/shoes1-03.jpg" onclick="switchPhoto(this) ">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../../resources/img/shoes1-03.jpg" onclick="switchPhoto(this) ">
                        </a>
                    </li>
                    </li>
                    <li>
                        <a href="">
                            <img src="../../resources/img/shoes1-02.jpg" onclick="switchPhoto(this) ">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../../resources/img/shoes1-02.jpg" onclick="switchPhoto(this) ">
                        </a>
                    </li>
                    <div class="scroll-btn-prev is-disabled">
                        <a><i>∨</i></a>
                    </div>
                </ul>
            </div>
            <div id="big-photo"><img  id="photo" src="../../resources/img/shoes1-01.jpg"></div>

        </div>
        <div id="product-info"  >
            <div id="start-inner">
                <div id="start-1">
                    <i class="icon icon-star-y"></i>
                    <span>共有0条评价</span>
                </div>
                <div id="start-2">
                    <div class="goods-tit">
                        中性 &nbsp;ORIGINALS &nbsp;
                        <h3 id="h3-1">SUPERSTAR 经典鞋</h3>
                        <span style="color: black" class="goods-price price-single">¥799</span>
                        <div class="pdp-color ">
                            <h3>亮白/1号黑色/亮白(C77124)</h3>
                            <ul>
                                <li>
                                    <img src="../../resources/img/shoes1-02.jpg">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="product-select">

                    <div class="select-type">
                        <!--<p class="events-chart">选择尺码</p>-->
                        <div class="dropdown">
                            <select>
                                <option selected="selected" disabled="disabled"  style='display: none' value=''>选择尺码</option>
                                <option>34</option>
                                <option>35</option>
                                <option>36</option>
                                <option>37</option>
                                <option>38</option>
                                <option>39</option>
                            </select>
                        </div>
                    </div>
                    <div class="select-type">
                        <!--<p class="events-chart">选择颜色</p>-->
                        <div class="dropdown">
                            <select>
                                <option selected="selected" disabled="disabled"  style='display: none' value=''>选择颜色</option>
                                <option>黑色</option>
                                <option>白色</option>
                            </select>
                        </div>
                    </div>
                    <div class="select-type">
                        <div class="count-text"><p class="events-chart">选择数量</p></div>
                        <div class="select-count">
                            <input type="button" value="-" onclick="sub(this)">
                            <input type="button" value="1" >
                            <input type="button" value="+" onclick=add(this)>
                        </div>

                    </div>
                </div>
            </div>


        </div>
    </div>
    <div id="product-sell">
        <div id="product-sell-1">
            <div class="product-sell-2">
                <a href="" class="btn btn-gradient-blue btn-have-arrow btn-buy-it-now">
                    <span>立即购买</span>
                    <div class="swiper-button-next"></div>

                </a>
            </div>
            <div class="product-sell-2">
                <a href="" class="btn btn-gradient-blue btn-have-arrow btn-buy-it-now">
                    <span>加入购物车</span>
                    <div class="swiper-button-next"></div>

                </a>
            </div>
            <div class="free-freight">
                <a href="" class="e-free-freight-btn">
                    <i class="icon icon-free-freight"></i>
                    <span>该商品免运费</span></a>
                <a href="" class="e-free-service-btn service-btn absolute">
                    <i class="icon icon-service-btn"></i>
                    <span>在线客服</span>
                </a>
            </div>
        </div>
    </div>

</div>
<div id="blank">

</div>
<div id="announce">
</div>
<div id="content">
    <span>评价和反馈</span>
    <div id="content-screen">
        <div class="content-screen-1">
            <p>筛选</p>
        </div>
        <div class="content-screen-2">
            <select>
                <option selected="selected" disabled="disabled"  style='display: none' value=''>星级评论</option>
            </select>
        </div>

    </div>
    <div id="content-bottom">
        <div id="content-bottom-left">
            <div class="star-1">
                <div class="star-1-left"> <i class="icon icon-star-y"></i></div>
                <div class="star-1-right"><span>0</span><span>分</span></div>
            </div>
            <div class="star-2">417个评价</div>
            <div class="star-3">95%</div>
            <div class="star-4">顾客推荐此产品</div>

            <div id="feedback">
                <div class="feedback-box size float-clearfix">
                    <div class="content-info"><span>尺码</span></div>
                    <div class="detail-box">
                        <div class="bg-progress"><i class="icon icon-progress-bar"></i>
                            <span class="bg-yellow" style="left: 68.94736842105263%;"></span>
                        </div>
                        <div class="progress-detail">
                            <p>偏小</p>
                            <p>正好</p>
                            <p>偏大</p>
                        </div>
                    </div>
                </div>
                <div class="feedback-box comfort float-clearfix">
                    <div class="content-info"><span>舒适度</span></div>
                    <div class="detail-box">
                        <div class="bg-progress"><i class="icon icon-progress-bar"></i><span class="bg-yellow" style="left: 71.48325358851675%;"></span></div>
                        <div class="progress-detail">
                            <p>不舒适</p>
                            <p>舒适</p>
                            <p>非常舒适</p>
                        </div>
                    </div>
                </div>
                <div class="feedback-box quality float-clearfix">
                    <div class="content-info"><span>质量</span></div>
                    <div class="detail-box">
                        <div class="bg-progress"><i class="icon icon-progress-bar"></i><span class="bg-yellow" style="left: 79.76076555023924%;"></span></div>
                        <div class="progress-detail">
                            <p>非常差</p>
                            <p>很好</p>
                            <p>非常好</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="content-bottom-right">
            <div class="evaluate-1"></div>
            <div class="evaluate-1"></div>
            <div class="evaluate-1"></div>
            <div class="evaluate-1"></div>
            <div id="evaluate-more">
                <a href="">
                    <div id="evaluate-more-1"><p>加载更多评价</p></div>
                </a>
            </div>
        </div>
    </div>
</div>
<div id="recent-look">
    <p>最近浏览</p>
    <div id="recent-look-1">
        <div class="swiper-wapper">
            <div class="item">
                <a href=""><img  src="../../resources/img/shoes1.jpg"></a>
                <div class="pro-intro">
                    <a href="">POD-S3.1经典鞋></a>
                    <span>¥1,099</span>
                </div>
            </div>
            <div class="item">
                <a href=""><img src="../../resources/img/shoes1.jpg"></a>
                <div class="pro-intro">
                    <a href="">POD-S3.1经典鞋></a>
                    <span>¥1,099</span>
                </div>
            </div>
            <div class="item">
                <a href=""><img src="../../resources/img/shoes1.jpg"></a>
                <div class="pro-intro">
                    <a href="">POD-S3.1经典鞋></a>
                    <span>¥1,099</span>
                </div>
            </div>
            <div class="item">
                <a href=""><img src="../../resources/img/shoes1.jpg"></a>
                <div class="pro-intro">
                    <a href="">POD-S3.1经典鞋></a>
                    <span>¥1,099</span>
                </div>
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
