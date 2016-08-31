$(function(){
	$('#center_area').tabs('add',{
		title:'首页',
		href:"yc.html"
	});


	$('#menu_tree').tree({
		onClick:function(node){
			var text=node.text;//获取选中的节点文本值
			var tabs=$('#center_area');
			if(text=='新闻类型管理'){
				if(tabs.tabs('exists',"新闻类型管理")){
					tabs.tabs('select',"新闻类型管理");
				}else{
					tabs.tabs('add',{
						title:'新闻类型管理',
						href:"types.html",
						closable:true
					});
				}
			}else if(text=='新闻管理'){
				if(tabs.tabs('exists',"新闻管理")){
					tabs.tabs('select',"新闻管理");
				}else{
					tabs.tabs('add',{
						title:'新闻管理',
						href:"news.html",
						closable:true
					});
				}
			}else if(text=='管理员管理'){
				if(tabs.tabs('exists',"管理员管理")){
					tabs.tabs('select',"管理员管理");
				}else{
					tabs.tabs('add',{
						title:'管理员管理',
						href:"admins.html",
						closable:true
					});
				}
			}else if(text=='会员管理'){
				if(tabs.tabs('exists',"会员管理")){
					tabs.tabs('select',"会员管理");
				}else{
					tabs.tabs('add',{
						title:'会员管理',
						href:"users.html",
						closable:true
					});
				}
			}else if(text=='个人信息'){
				if(tabs.tabs('exists',"个人信息")){
					tabs.tabs('select',"个人信息");
				}else{
					tabs.tabs('add',{
						title:'个人信息',
						href:"person.html",
						closable:true
					});
				}
			}
		}
	});
});