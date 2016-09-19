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
	$.post("../product/findBypage",{p:1},function(data){
		var str="";
		for(var i=0;i<data.length;i++){
			str+='<li><a href="product_d.html">';
			str+='<img src="../'+data[i].pict+'" alt=""/>';
			str+='<p>'+data[i].pname+'</p>';
			str+='</a></li>';
		}
		$("#prosList").html("").append(str);	
	});
	var pagesize;
	$.post("../product/findCount",function(data){
		var page=parseInt(data);
		if(page%12==0){
			pagesize=page/12;
		}else{
			pagesize=Math.floor((page/12)+1);
		}
		$(".tcdPageCode").createPage({
		    pageCount:pagesize,
		    current:1,
		    backFn:function(p){
		    	$.post("../product/findBypage",{p:p  },function(data){
		    		var str="";
		    		for(var i=0;i<data.length;i++){
		    			str+='<li><a href="product_d.html">';
		    			str+='<img src="../'+data[i].pict+'" alt=""/>';
		    			str+='<p>'+data[i].pname+'</p>';
		    			str+='</a></li>';
		    		}
		    		$("#prosList").html(str);	
		    	});
		    }
		});
	});


}

function findByfid(id){
	$.post("../productType/findByfptid",{fptid:id},function(data){
		if(data){
			var str="";
			str+='<a href="" class="now">全部</a>';
			for(var i=0;i<data.length;i++){
				str+='<a href="javascript:findBytid('+data[i].ptid+')">'+data[i].name+'</a>';
			}
			$.post("../productType/findById",{ptid:id},function(data){
				if(data){
					$("#findType").html(data.name);
				}
			});	
		$("#fptid").html(str);
		}
	});
	var num;
	$.post("../product/findCountById",{ptid:id},function(data){
		var page=parseInt(data);
		if(page%12==0){
			num=page/12;
		}else{
			num=Math.floor((page/12)+1);
		}  	$.post("../product/findBypageId",{p:1,ptid:id},function(data){
		    		var pagestr="";
		    		for(var i=0;i<data.length;i++){
		    			pagestr+='<li><a href="product_d.html">';
		    			pagestr+='<img src="../'+data[i].pict+'" alt=""/>';
		    			pagestr+='<p>'+data[i].pname+'</p>';
		    			pagestr+='</a></li>';
		    		}
		    		$("#prosList").html(pagestr);	
		    	});
	
		$(".tcdPageCode").createPage({
		    pageCount:num,
		    current:1,
		    backFn:function(p){
		    	$.post("../product/findBypageId",{p:p,ptid:id},function(data){
		    		var pagestr="";
		    		for(var i=0;i<data.length;i++){
		    			pagestr+='<li><a href="product_d.html">';
		    			pagestr+='<img src="../'+data[i].pict+'" alt=""/>';
		    			pagestr+='<p>'+data[i].pname+'</p>';
		    			pagestr+='</a></li>';
		    		}
		    		$("#prosList").html(pagestr);	
		    	});
		    }
		});
	});

}
function  findBytid(id){
	alert(id);
	var num;
	$.post("../product/findCountById",{ptid:id},function(data){
		var page=parseInt(data);
		alert(page);
		if(page%12==0){
			num=page/12;
		}else{
			num=Math.floor((page/12)+1);
		}
		    	$.post("../product/findBypageId",{p:1,ptid:id},function(data){
		    		var pagestr="";
		    		for(var i=0;i<data.length;i++){
		    			pagestr+='<li><a href="product_d.html">';
		    			pagestr+='<img src="../'+data[i].pict+'" alt=""/>';
		    			pagestr+='<p>'+data[i].pname+'</p>';
		    			pagestr+='</a></li>';
		    		}
		    		$("#prosList").html(pagestr);	
		    	});
		$(".tcdPageCode").createPage({
		    pageCount:num,
		    current:1,
		    backFn:function(p){
		    	$.post("../product/findBypageId",{p:p,ptid:id},function(data){
		    		var pagestr="";
		    		for(var i=0;i<data.length;i++){
		    			pagestr+='<li><a href="product_d.html">';
		    			pagestr+='<img src="../'+data[i].pict+'" alt=""/>';
		    			pagestr+='<p>'+data[i].pname+'</p>';
		    			pagestr+='</a></li>';
		    		}
		    		$("#prosList").html(pagestr);	
		    	});
		    }
		});
	});

}

