function addshowcar(){
	$.get("customer/shopcar",function(data){
		location.href="page/shopcar.jsp"
	});
}

