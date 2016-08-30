<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>主页</title>
<link rel="short icon" href="../images/icon.png" />
<link rel="stylesheet" href="../css/newArrival.css" />
<link rel="stylesheet" href="../css/index.css" />
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/slider.js"></script>
<script src="../js/index.js"></script>
</head>
<body>
	<div class="head">
		<!--头部之登录部分-->
		<div class="login">
			<div class="login_left">
				<div class="welcome">
					<a href="login.jsp" id="login">登录</a> | <a href="register.jsp"
						id="register">注册</a> |
				</div>
				<div class="shop_car">
					<a href="" id="shop_car"></a>
				</div>
			</div>
			<div class="login_right">
				<div class="welcome right_1">
					<a href="">我的嗨购</a> | <a href="">会员俱乐部</a>
				</div>
			</div>
		</div>
		<!--头部之菜单栏-->
		<div class="menu">
			<ul>
				<li class="li_1"></li>
				<!--logo放置-->
				<li><a href="">首页</a></li>
				<li class="li_3"><a href="">在线商城<i></i></a>
					<ul class="on_ul">
						<li class="one">床上用品
							<ul class="two">
								<li class="two_"><a href="">床单/被套</a></li>
								<li class="two_"><a href="">床上四件套</a></li>
								<li class="two_"><a href="">抱枕</a></li>
								<li class="two_"><a href="">被子/被芯</a></li>
								<li class="two_"><a href="">竹凉席</a></li>
							</ul>
						</li>
						<li class="one">装饰设计
							<ul class="two">
								<li class="two_"><a href="">板材</a></li>
								<li class="two_"><a href="">墙纸/墙贴</a></li>
								<li class="two_"><a href="">窗帘</a></li>
								<li class="two_"><a href="">天花板</a></li>
								<li class="two_"><a href="">家具</a></li>
							</ul>
						</li>
						<li class="one">家居用品
							<ul class="two">
								<li class="two_"><a href="">毛巾/浴巾</a></li>
								<li class="two_"><a href="">毛毯</a></li>
								<li class="two_"><a href="">靠垫</a></li>
								<li class="two_"><a href="">地毯</a></li>
								<li class="two_"><a href="">沙发</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="li_4"><a href="">新品上架<i></i></a>
					<div class="new_div">
						<ul class="new_ul">
							<li><a href=""><img src="../images/cl7.jpg" class="gray" /><span>窗帘</span></a></li>
							<li><a href=""><img src="../images/cp41.jpg"
									class="gray" /><span>床品</span></a></li>
							<li><a href=""><img src="../images/dt20.jpg"
									class="gray" /><span>地毯</span></a></li>
							<li><a href=""><img src="../images/kd58.jpg"
									class="gray" /><span>靠垫</span></a></li>
							<li><a href=""><img src="../images/yj2.jpg" class="gray" /><span>浴巾</span></a></li>
						</ul>
					</div></li>
				<li><a href="">客户留言</a></li>
				<li><a href="">关于我们</a></li>
			</ul>
			<!--搜索框-->
			<div class="search_box">
				<form action="" method="post" id="search_box">
					<p>
						<input type="text" id="search" placeholder="请输入您要查找的商品"
							autocomplete="on" />
					</p>
					<input type="submit" value="GO" id="go_search" />
				</form>
			</div>
		</div>
	</div>
	<!---------------------------------------------内容------------------------------------------->
	<div class="content">
		<!-- 轮播广告 -->
		<div id="banner_tabs" class="flexslider">
			<ul class="slides">
				<li><a title="" target="_blank" href="#"> <img width="1920"
						height="482" alt=""
						style="background: url(../images/001.jpg) no-repeat center;"
						src="images/alpha.png">
				</a></li>
				<li><a title="" href="#"> <img width="1920" height="482"
						alt=""
						style="background: url(../images/002.jpg) no-repeat center;"
						src="images/alpha.png">
				</a></li>
				<li><a title="" href="#"> <img width="1920" height="482"
						alt=""
						style="background: url(../images/003.jpg) no-repeat center;"
						src="images/alpha.png">
				</a></li>
				<li><a title="" href="#"> <img width="1920" height="482"
						alt=""
						style="background: url(../images/004.jpg) no-repeat center;"
						src="images/alpha.png">
				</a></li>
				<li><a title="" href="#"> <img width="1920" height="482"
						alt=""
						style="background: url(../images/005.jpg) no-repeat center;"
						src="images/alpha.png">
				</a></li>
			</ul>
			<!--    /*左右边的小箭头*/-->
			<ul class="flex-direction-nav">
				<li><a class="flex-prev" href="javascript:;">Previous</a></li>
				<li><a class="flex-next" href="javascript:;">Next</a></li>
			</ul>
			<!--    /*下面的小点点*/-->
			<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
				<li><a>1</a></li>
				<li><a>2</a></li>
				<li><a>3</a></li>
				<li><a>4</a></li>
				<li><a>4</a></li>
			</ol>
		</div>
	</div>
	<!---------------------------------------------尾部------------------------------------------->
	<footer style="height: 110px;">
		<div class="bottom">
			<img id="bott" src="../images/bottomlogo.png">
			<div class="bott2">
				<ul>
					<li><img src="../images/b1.png"></li>
					<li><img src="../images/b2.png"></li>
					<li><img src="../images/b3.png"></li>
					<li><img src="../images/b4.png"></li>
					<li><img src="../images/b5.png"></li>
					<li><img src="../images/b6.png"></li>
				</ul>
			</div>
		</div>
		<div class="ziti">
			<div style="border-top: solid #cac9c8 1px; width: 50%; margin: auto;"></div>
			<div
				style="font-size: 12px; margin: auto; text-align: center; margin-top: 15px; color: #969492;">
				温馨提示：嗨购公司欢成立以来一直征求广大消费者的各种建议，嗨购将一步步完善，为广大消费者提供更优质的服务，更优越的产品。嗨购在以后的道路上会按照本公司的需求与调整满足消费者的合理条件。<br>
			</div>
			<div
				style="font-size: 12px; margin: auto; text-align: center; margin-top: 15px; color: #969492;">
				<p>湖南省衡阳市湖南工学院嗨购 &copy;&nbsp; 建立于2016 嗨购公司版权所有</p>
			</div>
		</div>
	</footer>
</body>
</html>
