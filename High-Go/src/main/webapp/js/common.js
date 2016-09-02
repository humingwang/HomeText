$(function(){
	
	//登录输入框效果
	$('.form_text_ipt input').focus(function(){
		$(this).parent().css({
			'box-shadow':'0 0 3px #bbb',
		});
	});
	$('.form_text_ipt input').blur(function(){
		$(this).parent().css({
			'box-shadow':'none',
		});
		//$(this).parent().next().hide();
	});
	
	$('.form_text_ipt1 input').focus(function(){
		$(this).parent().css({
			'box-shadow':'0 0 3px #bbb',
		});
	});
	$('.form_text_ipt1 input').blur(function(){
		$(this).parent().css({
			'box-shadow':'none',
		});
		//$(this).parent().next().hide();
	});
	//表单验证


});
//验证用户名
function checkCusName() {
	var username = $("#cname").val();;
	var zz = /^[A-Za-z0-9]{3,10}$/;
	if (!zz.test(username)) {
		$("#customer_earn").html(" × 用户名不符合规范").css("color", "#F00");
	} else {
		$("#customer_earn").html("√用户名可用").css("color", "#0F0");
	}
}

//验证邮箱
function checkEmail(){
	var pwd = $("#cemail").val();
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	if (pwd.match(reg)) {
		$("#email_earn").html("√ 邮箱格式正确").css("color", "#0F0");
	}else{
		$("#email_earn").html("× 邮箱格式不正确").css("color", "#F00");	
	}
}

//验证密码
function checkpwd(){

	var pwd =$("#cpwd").val();
	alert(pwd);
	if ("" == pwd || pwd == null) {
		$("#pwd_earn").html("× 您的密码不能为空...").css("color", "#F00");
	} else {
		$("#pwd_earn").html("√密码格式正确...").css("color", "#0F0");
	}
}

//验证重复密码
function checkrepwd() {
	var pwdagain = $("#recpwd").val();
	var pwd = $("#cpwd").val();
	if (pwdagain == pwd && pwd != "" && pwd != null) {
		$("#repwd_earn").html("√密码重复确认正确...").css("color", "#0F0");
	} else {
		$("#repwd_earn").html("× 密码不一致请重新输入...").css("color", "#F00");
		$("#repwd_earn").val("");
	}
}
function Send(cemail){
	$.post("customer/code/"+cemail,function(data){
		if(data=1){
			id=window.setInterval("setCodeTime()",1000);
		}
	},"json");//返回数据的格式
}

var time=5;
function setCodeTime(){
	$("#cemail").html("");
	$("#code").html("<span style='font-size:14px;'>"+time+"秒后可重新发送</span>");
	time--;
	if(time<=0){
		email=$("#cemail").val();
		$("#code").html("");
		$("#code").html("<input type='button' style='border:ridge 2px #CCCCCC' onclick='Send(email)' id='yzm' value='点击发送验证码'/>");
		window.clearInterval(id);
		time=5;
	}
}