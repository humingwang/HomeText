<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<meta name="keywords" content="首页" />
<meta name="description" content="首页" />
<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
<link rel="stylesheet" type="text/css" href="../css/newArrival.css" />
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/big.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var showproduct = {
			"boxid" : "showbox",
			"sumid" : "showsum",
			"boxw" : 400,//宽度,该版本中请把宽高填写成一样
			"boxh" : 400,//高度,该版本中请把宽高填写成一样
			"sumw" : 60,//列表每个宽度,该版本中请把宽高填写成一样
			"sumh" : 60,//列表每个高度,该版本中请把宽高填写成一样
			"sumi" : 7,//列表间隔
			"sums" : 5,//列表显示个数
			"sumsel" : "sel",
			"sumborder" : 1,//列表边框，没有边框填写0，边框在css中修改
			"lastid" : "showlast",
			"nextid" : "shownext"
		};//参数定义	  
		$.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
	});
</script>
</head>
<body>
	<div class="head">
		<!--头部之登录部分-->
		<div class="login">
			<div class="login_left">
				<div class="welcome">
					<a href="" id="login">登录</a> | <a href="" id="register">注册</a> |
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
							<li><a href=""><img src="../images/cp41.jpg" class="gray" /><span>床品</span></a></li>
							<li><a href=""><img src="../images/dt20.jpg" class="gray" /><span>地毯</span></a></li>
							<li><a href=""><img src="../images/kd58.jpg" class="gray" /><span>靠垫</span></a></li>
							<li><a href=""><img src="../images/yj2.jpg" class="gray" /><span>浴巾</span></a></li>
						</ul>
					</div></li>
				<li><a href="">客户留言</a></li>
				<li><a href="">关于我们</a></li>
			</ul>
			<!--搜索框-->
			<div class="search_box">
				<form action="" method="" id="search_box">
					<p>
						<input type="text" id="search" placeholder="请输入您要查找的商品"
							autocomplete="on" />
					</p>
					<input type="submit" value="GO" id="go_search" />
				</form>
			</div>
		</div>
	</div>









	<div class="showall">
		<!--left -->
		<div class="showbot">
			<!--  <div id="showbox_mask"></div>-->
			<div id="showbox">
				<img src="../images/photos/img01.jpg" width="400" height="400" /> <img
					src="../images/photos/img02.jpg" width="400" height="400" /> <img
					src="../images/photos/img03.jpg" width="400" height="400" /> <img
					src="../images/photos/img04.jpg" width="400" height="400" /> <img
					src="../images/photos/img05.jpg" width="400" height="400" /> <img
					src="../images/photos/img06.jpg" width="400" height="400" />

			</div>
			<!--展示图片盒子-->
			<div id="showsum">
				<!--展示图片里边-->
			</div>
			<p class="showpage">
				<a href="javascript:void(0);" id="showlast"> < </a> <a
					href="javascript:void(0);" id="shownext"> > </a>
			</p>
		</div>
		<!--conet -->
		<div class="tb-property">
			<div class="tr-nobdr">【嗨购超市】博洋家纺 被子春秋被 双人全棉被芯单人空调被加厚大豆纤维被包邮</div>
			<div class="txt">
				<span class="nowprice">￥<a href="">599.00</a></span>
				<div class="cumulative">
					<span class="number ty1">累计售出<br /> <em
						id="add_sell_num_363">370</em></span> <span class="number tyu">累计评价<br />
						<em id="add_sell_num_363">25</em></span>
				</div>
			</div>
			<div class="txt-h">
				<span class="tex-o">分类</span>
				<ul class="glist" id="glist"
					data-monitor="goodsdetails_fenlei_click">
					<li><a title="红色36g" href="">红色36g</a></li>
					<li><a title="蓝色16g" href="">红色36g</a></li>
					<!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
				</ul>
			</div>
			<script>
				$(document).ready(function() {
					var t = $("#text_box");
					$('#min').attr('disabled', true);
					$("#add").click(function() {
						t.val(parseInt(t.val()) + 1)
						if (parseInt(t.val()) != 1) {
							$('#min').attr('disabled', false);
						}

					})
					$("#min").click(function() {
						t.val(parseInt(t.val()) - 1);
						if (parseInt(t.val()) == 1) {
							$('#min').attr('disabled', true);
						}

					})
				});
			</script>
			<div class="gcIpt">
				<span class="guT">数量</span> <input id="min" name="" type="button"
					value="-" /> <input id="text_box" name="" type="text" value="1"
					style="width: 30px; text-align: center; color: #0F0F0F;" /> <input
					id="add" name="" type="button" value="+" /> <span class="Hgt">库存（99）</span>
			</div>
			<div class="nobdr-btns">
				<button class="addcart hu">
					<img src="../images/shop.png" width="25" height="25" />加入购物车
				</button>
				<button class="addcart yh">
					<img src="../images/ht.png" width="25" height="25" />立即购买
				</button>
			</div>
			<div class="guarantee">
				<span>邮费：包邮&nbsp;&nbsp;支持货到付款 <a href=""><img
						src="../images/me.png" /></a></span>
			</div>
		</div>
		<!--right -->
		<div class="extInfo">
			<div class="brand-logo">
				<a href="" title="奥影汽车影音"> <img src="../images/ho_03.png" />
				</a>
			</div>
			<div class="seller-pop-box">
				<span class="tr">商家名称：嗨购极有家优品家纺</span> <span class="tr">商家等级：初级店铺</span>
				<span class="tr">客家电话：15012365897</span> <span class="tr hoh">
					<a title="河南郑州市航海路57号河南郑州市航海路57号" href="">所在地区：河南郑州市航海路57号河南郑州市航海路57号</a>
				</span>
			</div>
			<div class="seller-phone">
				<span class="pop im"> <a href="" data-name="联系卖家"><img
						src="../images/phon.png" />联系卖家</a>
				</span> <span class="pop in"> <a href="" data-name="咨询卖家"><img
						src="../images/qq.png" />咨询卖家</a>
				</span> <span class="pop in"> <a href="" data-name="进店逛逛"><img
						src="../images/shop-line.png" />进店逛逛</a>
				</span> <span class="pop in"> <a href="" data-name="关注店铺"><img
						src="../images/staar.png" />关注店铺</a>
				</span>
			</div>
			<div class="jd-service">
				<a href=""> <img src="../images/ho_07.png" />
				</a>
			</div>
			<div class="suport-icons">
				<h4>
					扫一扫<br />手机下单更优惠
				</h4>
				<img src="../images/ho_11.jpg" />
			</div>
		</div>
	</div>
	<!-- 推荐搭配 -->
	<div class="gdetail">
		<div class="dp_wrap_title">推荐搭配</div>
		<div class="dp_wrap">
			<!-- 结算 -->
			<div class="dq_total_wrap">
				<div class="icon_equal">=</div>
				<div class="dp_num">
					已经选择0个配件
					<p class="dq_price">
						总计<span>￥599.00</span>元
					</p>
					<button class="get">立即购买</button>
				</div>
			</div>
			<!-- 搭配1 -->
			<div class="dq_ori">
				<a class="dq_ori_prd" href=""><img src="../images/hdy_11.jpg" /></a> <a
					class="ori_prd" href="">纯棉四件套夏沫之晨全棉斜纹印花床单被套</a>
				<p class="ori_prd dp_wrap_pprice_ori">￥599.00</p>
			</div>
			<div class="scroll_wrap">
				<!-- 搭配2 -->
				<div class="dp_prd">
					<div class="icon_plus">+</div>
					<div class="dp_p_wrap">
						<a class="dp_wrap_pimg" href="" target="_blank"><img
							src="../images/hdy_07.jpg" /></a> <a class="dp_wrap_pname" href=""
							target="_blank">纯棉全棉斜纹居家拖鞋 穿着方便</a>
						<p class="dp_wrap_pprice">
							<label> <input type="checkbox" data-price="199"
								data-item="570b1b2f5efb114c378b4575"> ￥99
							</label>
						</p>
					</div>
				</div>
				<!-- 搭配3 -->
				<div class="dp_prd">
					<div class="icon_plus">+</div>
					<div class="dp_p_wrap">
						<a class="dp_wrap_pimg" href="" target="_blank"><img
							src="../images/hdy_09.jpg" /></a> <a class="dp_wrap_pname" href=""
							target="_blank">水洗棉四件套简约纯棉纯色格子条纹床品</a>
						<p class="dp_wrap_pprice">
							<label> <input type="checkbox" data-price="299"
								data-item="570b1b2f5efb114c378b4575"> ￥299
							</label>
						</p>
					</div>
				</div>
				<!-- 搭配4 -->
				<div class="dp_prd">
					<div class="icon_plus">+</div>
					<div class="dp_p_wrap">
						<a class="dp_wrap_pimg" href="" target="_blank"><img
							src="../images/list_03.jpg" /></a> <a class="dp_wrap_pname" href=""
							target="_blank">双人全棉被芯单人空调被F</a>
						<p class="dp_wrap_pprice">
							<label> <input type="checkbox" data-price="99"
								data-item="570b1b2f5efb114c378b4575"> ￥99
							</label>
						</p>
					</div>
				</div>
				<!-- 产品结束 -->
			</div>
		</div>
	</div>

	<!-- 商品介紹 -->
	<div class="gdetail">
		<!-- left -->
		<div class="aside">
			<h3>
				看了还看<span><img src="../images/fod.png" width="22" height="22" />换一批</span>
			</h3>
			<dl class="ac-mod-list">
				<dt>
					<a href=""><img src="../images/hdy_09.jpg" /></a>
				</dt>
				<dd>
					水洗棉四件套简约纯棉纯色格子条纹床品 <span>￥299</span>
				</dd>
			</dl>
			<dl class="ac-mod-list">
				<dt>
					<a href=""><img src="../images/hdy_07.jpg" /></a>
				</dt>
				<dd>
					纯棉全棉斜纹居家拖鞋 穿着方便 <span>￥99</span>
				</dd>
			</dl>
			<dl class="ac-mod-list">
				<dt>
					<a href=""><img src="../images/hdy_11.jpg" /></a>
				</dt>
				<dd>
					纯棉四件套夏沫之晨全棉斜纹印花床单被套 <span>￥599</span>
				</dd>
			</dl>
		</div>
		<!-- right -->
		<script>
			var detail = document.querySelector('.detail');
			var origOffsetY = detail.offsetTop;
			function onScroll(e) {
				window.scrollY >= origOffsetY ? detail.classList.add('sticky')
						: detail.classList.remove('sticky');
			}
			document.addEventListener('scroll', onScroll);
		</script>
		<div class="detail">
			<div class="active_tab" id="outer">
				<ul class="act_title_left" id="tab">
					<li class="act_active"><a href="#">规格参数</a></li>
					<li><a href="#">商品介绍</a></li>
					<li><a href="#">商品评价</a></li>
					<li><a href="#">售后保障</a></li>
				</ul>
				<ul class="act_title_right">
					<li class="mui"><a id="mui-a" href="#">扫手机下单+</a></li>
					<li class="mui-ac"><a href="#">加入购物车</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div id="content" class="active_list">
				<!--0-->
				<div id="ui-a" class="ui-a">
					<ul style="display: block;">
						<li>商品名称：水洗棉四件套简约纯棉纯色格子条纹床品 全棉天竺棉被套床单床笠</li>
						<li>商品编号：ECS001983</li>
						<li>品牌</li>
						<li>上架时间：2016-05-24</li>
						<li>商品毛重：0克</li>
						<li>库存： 999</li>
						<li><img src="../images/ko_11.jpg" /></li>
						<li><img src="../images/ko_2.jpg" /></li>
						<!--<li><img src="../images/ko.jpg"/></li>
												        <li><img src="../images/ko-1.jpg"/></li>-->
					</ul>
				</div>
				<!--商品规格-->
				<div id="bit" class="bit">
					<ul style="display: none;">
						<li><img src="../images/ko_1.jpg" /></li>
						<li><img src="../images/ko-2.jpg" /></li>
						<li><img src="../images/ko.jpg" /></li>
						<li><img src="../images/ko-2.jpg" /></li>

					</ul>
				</div>

				<!--商品评价-->

				<div id="ui-c" class="ui-c">
					<ul style="display: none;">

					</ul>
				</div>
				<!--售后保障-->
				<div id="uic" class="uic">
					<ul style="display: none;">
						<p>商品名称：水洗棉四件套简约纯棉纯色格子条纹床品 全棉天竺棉被套床单床笠</p>
						<p>商品编号：ECS001983</p>
						<p>品牌:威力马哈国产</p>
						<p>上架时间：2016-05-24</p>
						<span><img src="../images/ko-2.jpg" /></span>
						<span><img src="../images/ko.jpg" /></span>
					</ul>
				</div>
			</div>
			<script>
				$(function() {
					window.onload = function() {
						var $li = $('#tab li');
						var $ul = $('#content ul');

						$li.mouseover(function() {
							var $this = $(this);
							var $t = $this.index();
							$li.removeClass();
							$this.addClass('act_active');
							$ul.css('display', 'none');
							$ul.eq($t).css('display', 'block');
						})
					}
				});
			</script>
		</div>
	</div>
</body>
</html>

