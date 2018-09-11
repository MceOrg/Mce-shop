<%--
  Created by IntelliJ IDEA.
  User: 夏露
  Date: 2018/9/8
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>所有商品</title>
        <link rel="stylesheet" href="../../resources/css/all_shoes.css">
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

        <!--**************************** 下方信息 ************************************-->
        <div id="next">
            <div class="next-inner">
                <ul class="">
                    <li class="usp-header-txt">
                        <a class="" href="" onclick="" target="">全场免运费
                            <i class="icon icon-round-gray-right"></i>
                        </a>
                    </li>
                    <li class="usp-header-txt">
                        <a class="" href="" onclick="" target="">尊享当日达、次日达、次晨达
                            <i class="icon icon-round-gray-right"></i>
                        </a>
                    </li>
                    <li class="usp-header-txt">
                        <a class="" href="" onclick="" target="">注册会员支持货到付款
                            <i class="icon icon-round-gray-right"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="middle">
            <!--**************************** 商品展示栏左侧分类筛选 ************************************-->
            <div id="left-classify">
                <h2>筛选条件</h2>
                <div class="d1">
                        <span class="filtername">
                            <span>性别</span>
                            <i class="icon icon-unfold-retract"></i>
                        </span>
                    <ul>
                        <li>
                            <input type="checkbox" value="男子" name="gender" onclick=""><label> 男子</label>
                        </li>
                        <li>
                            <input type="checkbox" value="女子" name="gender" onclick=""><label> 女子</label>
                        </li>
                        <li>
                            <input type="checkbox" value="男童" name="gender" onclick=""><label> 男童</label>
                        </li>
                        <li>
                            <input type="checkbox" value="女童" name="gender" onclick=""><label> 女童</label>
                        </li>
                        <li>
                            <input type="checkbox" value="男女" name="gender" onclick=""><label> 男女</label>
                        </li>
                    </ul>
                </div>
                <div class="d2">
                        <span class="filtername">
                            <span>年龄段</span>
                            <i class="icon icon-unfold-retract"></i>
                        </span>
                    <ul>
                        <li>
                            <input type="checkbox" value="大童(8-14)岁" name="age" onclick=""><label> 大童(8-14)岁</label>
                        </li>
                        <li>
                            <input type="checkbox" value="小童(4-8)岁" name="age" onclick=""><label> 小童(4-8)岁</label>
                        </li>
                        <li>
                            <input type="checkbox" value="婴童(0-4)岁" name="age" onclick=""><label> 婴童(0-4)岁</label>
                        </li>
                    </ul>
                </div>
                <div class="d3">
                        <span class="filtername">
                            <span>运动类型</span>
                            <i class="icon icon-unfold-retract"></i>
                        </span>
                    <ul>
                        <li>
                            <input type="checkbox" value="训练" name="sport-type" onclick=""><label> 训练</label>
                        </li>
                        <li>
                            <input type="checkbox" value="足球" name="sport-type" onclick=""><label> 足球</label>
                        </li>
                        <li>
                            <input type="checkbox" value="跑步" name="sport-type" onclick=""><label> 跑步</label>
                        </li>
                        <li>
                            <input type="checkbox" value="户外" name="sport-type" onclick=""><label> 户外</label>
                        </li>
                        <li>
                            <input type="checkbox" value="篮球" name="sport-type" onclick=""><label> 篮球</label>
                        </li>
                    </ul>
                </div>
                <div class="d3">
                        <span class="filtername">
                            <span>品牌</span>
                            <i class="icon icon-unfold-retract"></i>
                        </span>
                    <ul>
                        <li>
                            <input type="checkbox" value="运动表现" name="shoes-type" onclick=""><label> 运动表现</label>
                        </li>
                        <li>
                            <input type="checkbox" value="ORIGINALS" name="shoes-type" onclick=""><label> ORIGINALS</label>
                        </li>
                        <li>
                            <input type="checkbox" value="运动型格" name="shoes-type" onclick=""><label> 运动型格</label>
                        </li>
                        <li>
                            <input type="checkbox" value="adidas by Stella McCartney" name="shoes-type" onclick=""><label> adidas by Stella McCartney</label>
                        </li>
                        <li>
                            <input type="checkbox" value="Essentials" name="shoes-type" onclick=""><label> Essentials</label>
                        </li>
                    </ul>
                </div>
                <div class="d3">
                        <span class="filtername">
                            <span>产品系列</span>
                            <i class="icon icon-unfold-retract"></i>
                        </span>
                    <ul>
                        <li>
                            <input type="checkbox" value="NMD" name="shoes-s" onclick=""><label> NMD</label>
                        </li>
                        <li>
                            <input type="checkbox" value="EQT" name="shoes-s" onclick=""><label> EQT</label>
                        </li>
                        <li>
                            <input type="checkbox" value="TERREX" name="shoes-s" onclick=""><label> TERREX</label>
                        </li>
                        <li>
                            <input type="checkbox" value="Superstar" name="shoes-s" onclick=""><label> Superstar</label>
                        </li>
                        <li>
                            <input type="checkbox" value="adicolor" name="shoes-s" onclick=""><label> adicolor</label>
                        </li>
                    </ul>
                </div>
            </div>

            <!--**************************** 商品展示栏右侧 ************************************-->
            <div id="right-show">
                <!-- 上层筛选 -->
                <div id="show-top">
                    <div class="sort">
                        <select class="drop-down-list">
                            <option value="">默认排序</option>
                            <option value="">销量从高到低</option>
                            <option value="">浏览从高到低</option>
                            <option value="">最新上架时间</option>
                            <option value="">价格从高到低</option>
                            <option value="">价格从低到高</option>
                            <option value="">评价从多到少</option>
                        </select>
                    </div>
                </div>
                <!-- 所有商品展示 -->
                <div id="show-allShoes">
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_01.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QTFLEX 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_02.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QUESTAR X BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>629</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_03.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">SUPERSTAR W 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 ORIGINALS</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>799</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_04.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_05.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA 18.3 FG 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_06.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_07.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18.3 FG J 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男童 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>469</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_08.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_09.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18.3 FG鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_10.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo LITE RACER BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>669</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_11.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_12.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_01.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QTFLEX 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_02.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QUESTAR X BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>629</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_03.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">SUPERSTAR W 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 ORIGINALS</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>799</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_04.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_05.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA 18.3 FG 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_06.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_07.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18.3 FG J 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男童 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>469</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_08.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_09.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18.3 FG鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_10.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo LITE RACER BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>669</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_11.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_12.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_01.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QTFLEX 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_02.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QUESTAR X BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>629</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_03.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">SUPERSTAR W 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 ORIGINALS</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>799</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_04.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_05.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA 18.3 FG 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_06.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_07.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18.3 FG J 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男童 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>469</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_08.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_09.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18.3 FG鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_10.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo LITE RACER BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>669</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_11.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_12.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_01.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QTFLEX 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_02.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo QUESTAR X BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>629</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_03.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">SUPERSTAR W 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>女子 ORIGINALS</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>799</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_04.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_05.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA 18.3 FG 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_06.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">COPA TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>529</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_07.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18.3 FG J 经典鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男童 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>469</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_08.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ TANGO 18.3 TF 鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>

                    </div>
                    <div class="shoes-fourList">
                        <!-- 1 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_09.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18.3 FG鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>599</span>
                            </div>
                        </div>
                        <!-- 2 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_10.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">adidas neo LITE RACER BYD 休闲鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 adidas neo</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>669</span>
                            </div>
                        </div>
                        <!-- 3 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_11.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">X 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球</span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
                        </div>
                        <!-- 4 -->
                        <div class="shoes">
                            <a href="">
                                <img src="img/shoes_12.png">
                            </a>
                            <div class="shoes-desc">
                                <a href="">NEMEZIZ 18+ FG 足球鞋</a>
                            </div>
                            <div class="shoes-classify">
                                <span>男子 运动表现 足球 </span>
                            </div>
                            <div class="shoes-price">
                                <span>￥</span><span>2018</span>
                            </div>
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
