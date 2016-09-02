<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	 <base href="/High-Go/"/>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<form action="customer/register" method="post">
							<div class="form_text_ipt">
								<input id="cname" name="cname" type="text" placeholder="用户名" onBlur="checkCusName(this)">
							</div>
							<div class="ececk_warning"><span id="customer_earn"></span></div>
							<div class="form_text_ipt">
								<input id="cpwd" name="cpwd" type="password" placeholder="密码" onBlur="checkpwd()" >
							</div>
							<div class="ececk_warning"><span id="pwd_earn"></span></div>
							<div class="form_text_ipt">
								<input id="recpwd" name="recpwd" type="password" placeholder="重复密码" onBlur="checkrepwd()">
							</div>
							<div class="ececk_warning"><span id="repwd_earn"></span></div>
							<div class="form_text_ipt">
									<select class="csex" name="csex">
										<option>选择性别</option>
									    <option>男</option>
									    <option>女</option>
										
									</select>
							</div>
							<div class="ececk_warning"><span></span></div>
							<div class="form_text_ipt" >
								<input name="cemail" id="cemail" type="text" placeholder="邮箱" onBlur="checkEmail()">
							</div>
							<div class="ececk_warning"><span id="email_earn"></span></div>
							<div class="form_text_ipt1">
								<input name="code" type="text" placeholder="验证码">
                        	</div>
							<div class="ececk_warning"><span id=""></span></div>
							<div class="form_a" id="code">
							 	<input type="button" style="border:ridge 2px #CCCCCC" onclick='Send($("#cemail").val())' id="yzm" value="点击发送验证码"/> 
<!-- 							<a id="yzm" href="javascript:void(0)" onclick='Send($("#cemail").val())'>点击发送验证码</a> -->							</div>
							<div class="form_btn">
								<button type="submit">注册</button>
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="customer/active">马上登录</a>
							</div>
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>错误信息显示：</span>
							</div>
							<div class="right other_right">
								<a href="#">${regErrorMsg}</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
