<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	 <base href="/High-Go/"/>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/common.js" ></script>
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					<div class="login_form">
						<div class="login_title">
							登录
						</div>

						<form action="customer/login" method="Post">
							
							<div class="form_text_ipt">
								<input name="cname" class="input-text" type="text" placeholder="用户名">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="cpwd"  class="input-text" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 下次自动登录</label>
								</div>
								<div class="right check_right">
									<a href="#">忘记密码</a>
								</div>
							</div>
							<div class="form_btn">
								<button class="input-button">登录</button>
							</div>
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="customer/activeres">马上注册</a>
							</div>
						<div class="other_login">
							<div class="left other_left">
								<span>错误信息显示</span>
							</div>
							<div class="right other_right">
								<a href="#">${errorMsg}</a>
							</div>
						</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>
