var num="";
window.onload=function(){
	$.post("address/findAll",function(data){
		if(data){
			var str="";
			str+='<div class="open_new">';
			str+='<button class="open_btn" onclick="javascript:onclick_open();">使用新地址</button>';
			str+='</div>';
			for(var i=0;i<data.length;i++){
				str+='<div class="add_mi" id="'+data[i].aid+'">';
				str+='<p style="border-bottom:1px dashed #ccc;line-height:28px;">'+data[i].aname+'收</p>';
				str+='<p>'+data[i].adetail+'</p>';
				str+='</div>';
				
			}
			alert(str);
			$(".Caddress").html(str);
			$('.Caddress .add_mi').click(function() {
				$(this).css('background', 'url("images/mail_1.jpg") no-repeat').siblings('.add_mi').css('background', 'url("images/mail.jpg") no-repeat')
				num=$(this).attr("id");
			})
		}
	});
}

function sale(){
	var aid=num;
	var omoney=$("#out_momey").html();
	var oid= Math.floor(Math.random()*10000000000+1);
	alert(omoney);
	$.post("order/add",{oid:oid,omoney:omoney,aid:aid},function(data){
		if(data){
			window.location.href="https://authzui.alipay.com/login/index.htm";
				}
	})
}