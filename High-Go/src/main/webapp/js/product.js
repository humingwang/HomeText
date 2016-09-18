window.onload=function(){
	var fptid="0";
	$.post("../productType/findByfptId",{fptid:fptid},function(data){
		if(data){
			var str="";
			str+='<li><a href="index.html">首页</a></li>';
			for(var i=0;i<data.length;i++){
				str+=' <li><a href="javascript:findByfid('+data[i].ptid+')" >'+data[i].name+'</a></li>';
			}
			str+='<li><a href="about.html">关于我们</a></li>';
			str+='<li><a href="contact.html">联系我们</a></li>';
			str+='<li><a href="user.html">会员中心</a></li>';
			$("#types").html(str);
		}
	});
}

function findByfid(id){
	$.post("../productType/findByfptid",{fptid:id},function(data){
		if(data){
			var str="";
			str+='<a href="" class="now">全部</a>';
			for(var i=0;i<data.length;i++){
				str+='<a href="">'+data[i].name+'</a>';
			}
			$.post("../productType/findById",{ptid:id},function(data){
				if(data){
					$("#findType").html(data.name);
				}
			});	
		$("#fptid").html(str);
		}
	});
}