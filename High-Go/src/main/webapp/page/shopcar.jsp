<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	 <base href="/High-Go/"/>
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="short icon" href="images/icon.png"/>
		<link rel="stylesheet" href="css/shopcar.css" />
		<link rel="stylesheet" href="css/newArrival.css" />
		<link rel="stylesheet" type="text/css" href="css/css.css" />
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/shopcar.js"></script>
		<script type="text/javascript" src="js/shopping.js"></script>	
			 
		
	</head>
	<body>
		<div class="head">
			<!--头部之登录部分-->
			<div class="login">
				<div class="login_left">
					<div class="welcome">
						<a href="" id="login">登录</a>
						|
						<a href="" id="register">注册</a>
						|
					</div>
					<div class="shop_car">
						<a href="" id="shop_car"></a>
					</div>
				</div>
				<div class="login_right">
					<div class="welcome right_1">
						<a href="">我的嗨购</a>
						|
						<a href="">会员俱乐部</a>
					</div>
				</div>
			</div>
			<!--头部之菜单栏-->
			<div class="menu">
				<ul>
					<li class="li_1"></li><!--logo放置-->
					<li><a href="">首页</a></li>
					<li class="li_3"><a href="" >在线商城<i></i></a>
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
						</ul>
					</li>
					<li class="li_4"><a href="">新品上架<i></i></a>
						<div class="new_div">
							<ul class="new_ul">
								<li><a href=""><img src="images/cl7.jpg" class="gray"/><span>窗帘</span></a></li>
								<li><a href=""><img src="images/cp41.jpg" class="gray"/><span>床品</span></a></li>
								<li><a href=""><img src="images/dt20.jpg" class="gray"/><span>地毯</span></a></li>
								<li><a href=""><img src="images/kd58.jpg" class="gray"/><span>靠垫</span></a></li>
								<li><a href=""><img src="images/yj2.jpg" class="gray"/><span>浴巾</span></a></li>
							</ul>
						</div>
					</li>
					<li><a href="">客户留言</a></li>
					<li><a href="">关于我们</a></li>
				</ul>
				<!--搜索框-->
				<div  class="search_box">
					<form action="" method="" id="search_box">
						<p><input type="text"  id="search" placeholder="请输入您要查找的商品" autocomplete="on"/></p>
						<input type="submit" value="GO" id="go_search" />
					</form>
				</div>
			</div>
		</div>
	<!---------------------------------------------内容------------------------------------------->
		<div class="content">
		<div class="Caddress">
				<!-- <div class="open_new">
				<button class="open_btn" onclick="javascript:onclick_open();">使用新地址</button>
			</div>
			
			<div class="add_mi">
				<p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
				<p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
			</div>
		<div class="add_mi">
				<p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
				<p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
			</div>
			<div class="add_mi">
				<p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
				<p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
			</div> -->
		
		</div>

		<!--
        	作者：z@163.com
        	时间：2016-03-04
        	描述：商品内容
        -->
		<div class="shopping_content">
			<div class="shopping_table">
				<table border="2" bordercolor="#cccccc" cellspacing="0" cellpadding="0" style="width: 100%; text-align: center;">
					<tr>
						<th>商品图片</th>
						<th>商品名称</th>
						<th>商品属性</th>
						<th>商品价格</th>
						<th>商品数量</th>
						<th>商品操作</th>
					</tr>
					<tr>
						<td>
							<a><img src="${product.pict}" /></a>
						</td>
						<td><span>${product.pname }</span></td>
						<td>
							<div class="">
								<span id="">颜色</span>：<span>红色</span>
							</div>
							<div class="">
								<span id="">规格</span>：<span>${product.pnorms }</span>
							</div>
						</td>
						<td>
							<span class="span_momey">${product.pprice }</span>
						</td>
						<td>
							<button class="btn_reduce" onclick="javascript:onclick_reduce(this);">-</button>
							<input class="momey_input" type="" name="" id="" value="1" disabled="disabled" />
							<button class="btn_add" onclick="javascript:onclick_btnAdd(this);">+</button>
						</td>
						<td>
							<button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
						</td>
					</tr>
				<!-- 	<tr>
						<td>
							<a><img src="images/2f1.jpg" /></a>
						</td>
						<td><span>小消息下</span></td>
						<td>
							<div class="">
								<span id="">颜色</span>：<span>白色</span>
							</div>
							<div class="">
								<span id="">尺码</span>：<span>L</span>
							</div>
						</td>
						<td>
							<span class="span_momey">11.10</span>
						</td>
						<td>
							<button class="btn_reduce" onclick="javascript:onclick_reduce(this);">-</button>
							<input class="momey_input" type="" name="" id="" value="1"  disabled="disabled"/>
							<button class="btn_add" onclick="javascript:onclick_btnAdd(this);">+</button>
						</td>
						<td>
							<button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
						</td>
					</tr>
					<tr>
						<td>
							<a><img src="images/2f1.jpg" /></a>
						</td>
						<td><span>小消息下</span></td>
						<td>
							<div class="">
								<span id="">颜色</span>：<span>白色</span>
							</div>
							<div class="">
								<span id="">尺码</span>：<span>L</span>
							</div>
						</td>
						<td>
							<span class="span_momey">11.10</span>
						</td>
						<td>
							<button class="btn_reduce" onclick="javascript:onclick_reduce(this);">-</button>
							<input class="momey_input" type="" name="" id="" value="1"  disabled="disabled"/>
							<button class="btn_add" onclick="javascript:onclick_btnAdd(this);">+</button>
						</td>
						<td>
							<button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
						</td>
					</tr>
					<tr>
						<td>
							<a><img src="images/2f1.jpg" /></a>
						</td>
						<td><span>小消息下</span></td>
						<td>
							<div class="">
								<span id="">颜色</span>：<span>白色</span>
							</div>
							<div class="">
								<span id="">尺码</span>：<span>L</span>
							</div>
						</td>
						<td>
							<span class="span_momey">11.10</span>
						</td>
						<td>
							<button class="btn_reduce" onclick="javascript:onclick_reduce(this);">-</button>
							<input class="momey_input" type="" name="" id="" value="1" disabled="disabled" />
							<button class="btn_add" onclick="javascript:onclick_btnAdd(this);">+</button>
						</td>
						<td>
							<button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
						</td>
					</tr>
					<tr>
						<td>
							<a><img src="images/2f1.jpg" /></a>
						</td>
						<td><span>小消息下</span></td>
						<td>
							<div class="">
								<span id="">颜色</span>：<span>白色</span>
							</div>
							<div class="">
								<span id="">尺码</span>：<span>L</span>
							</div>
						</td>
						<td>
							<span class="span_momey">11.00</span>
						</td>
						<td>
							<button class="btn_reduce" onclick="javascript:onclick_reduce(this);">-</button>
							<input class="momey_input" type="text" name="" id="" value="1"  disabled="disabled"/>
							<button class="btn_add" onclick="javascript:onclick_btnAdd(this);">+</button>
						</td>
						<td>
							<button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
						</td>
					</tr> -->
				</table>
				<div class="" style="width: 100%; text-align: right; margin-top: 10px;">
					<div class="div_outMumey" style="float: left;">
						总价：<span class="out_momey" id="out_momey">11</span>
					</div>
					<button class="btn_closing" onclick="sale()">结算</button>
				</div>
			</div>
		</div>

		<!--
        	作者：z@163.com
        	时间：2016-03-01
        	描述：shade 遮罩层
        -->
		<div class="shade">
		</div>
		<!--
        	作者：z@163.com
        	时间：2016-03-02
        	描述：shade_content
        -->
		<div class="shade_content">
			<div class="col-xs-12 shade_colse">
				<button onclick="javascript:onclick_close();">x</button>
			</div>
			<div class="nav shade_content_div">
				<div class="col-xs-12 shade_title">
					新增收货地址
				</div>
				<div class="col-xs-12 shade_from">
					<form action="address/add" method="post">
						<div class="col-xs-12">
							<span class="span_style" id="">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区</span>
							<input class="input_style" type="text" name="aarea" id="region" value="" placeholder="&nbsp;&nbsp;请输入您的所在地区" />
						</div>
						<div class="col-xs-12">
							<span class="span_style" id="">详细地址</span>
							<input class="input_style" type="text" name="adetail" id="address" value="" placeholder="&nbsp;&nbsp;请输入您的详细地址" />
						</div>
						<div class="col-xs-12">
							<span class="span_style" id="">邮政编号</span>
							<input class="input_style" type="text" name="amail" id="number_this" value="" placeholder="&nbsp;&nbsp;请输入您的邮政编号" />
						</div>
						<div class="col-xs-12">
							<span class="span_style" class="span_sty" id="">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
							<input class="input_style" type="text" name="aname" id="name_" value="" placeholder="&nbsp;&nbsp;请输入您的姓名" />
						</div>
						<div class="col-xs-12">
							<span class="span_style" id="">手机号码</span>
							<input class="input_style" type="text" name="atel" id="phone" value="" placeholder="&nbsp;&nbsp;请输入您的手机号码" />
						</div>
						<div class="col-xs-12">
							<input class="btn_remove" type="button" id="" onclick="javascript:onclick_close();" value="取消" />
							<input type="submit" class="sub_set" id="sub_setID" value="提交" />
						</div>
					</form>
				</div>
			</div>
		</div>

</div>

	<!---------------------------------------------尾部------------------------------------------->
		<footer style="height:110px;">
	<div class="bottom">
    	<img id="bott" src="images/bottomlogo.png">
        <div class="bott2">
            <ul>
                <li><img src="images/b1.png"></li>
                <li><img src="images/b2.png"></li>
                <li><img src="images/b3.png"></li>
                <li><img src="images/b4.png"></li>
                <li><img src="images/b5.png"></li>
                <li><img src="images/b6.png"></li>
            </ul>
        </div>
    </div>
    <div class="ziti">
    <div style="border-top:solid #cac9c8 1px; width:50%; margin:auto;"></div>
    <div style="font-size:12px; margin:auto; text-align:center; margin-top:15px; color:#969492;">
    温馨提示：嗨购公司欢成立以来一直征求广大消费者的各种建议，嗨购将一步步完善，为广大消费者提供更优质的服务，更优越的产品。嗨购在以后的道路上会按照本公司的需求与调整满足消费者的合理条件。<br></div>
    	<div style="font-size:12px; margin:auto; text-align:center; margin-top:15px;color:#969492;">
            <p>湖南省衡阳市湖南工学院嗨购  &copy;&nbsp; 建立于2016 	嗨购公司版权所有</p></div>
 	 </div>
    </footer>
	</body>
</html>
