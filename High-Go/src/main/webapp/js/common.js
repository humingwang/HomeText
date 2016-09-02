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
	$('.form_text_ipt input').bind('input propertychange',function(){
		if($(this).val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$(this).parent().next().show();
		}else{
			$(this).css({
				'color':'#ccc',
			});
			$(this).parent().css({
				'border':'solid 1px #ccc',
			});
			$(this).parent().next().hide();
		}
	});
	
	$('.form_text_ipt1 input').bind('input propertychange',function(){
		if($(this).val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$(this).parent().next().show();
		}else{
			$(this).css({
				'color':'#ccc',
			});
			$(this).parent().css({
				'border':'solid 1px #ccc',
			});
			$(this).parent().next().hide();
		}
	});

});


function Send(cemail){
	$.post("customer/code/"+cemail,function(data){
		if(data=1){
			id=window.setInterval("setCodeTime()",1000);
		}
	},"json");//返回数据的格式
}
var time=60;
function setCodeTime(){
	$("#yzm").html("");
	$("#code").html("<span style='font-size:12px;'>"+time+"秒后可重新发送</span>");
	time--;
	if(time==0){
		$("#code").html("");
		$("#code").html("<a id='yzm' href='javascript:void(0)' onclick='Send(" +$('#cemail').val()+")'>点击发送验证码</a>");
		window.clearInterval(id);
		time=60;
	}
}