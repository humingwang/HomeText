<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>High-Go，后台管理系统</title>
	<link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="../../easyui/css/demo.css">
	<script type="text/javascript" src="../../js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="../../easyui/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../../easyui/js/index.js"></script>
	<script type="text/javascript" src="../../easyui/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="../../js/showpic.js"></script>
	<script type="text/javascript" src="../../js/ajaxfileupload.js"></script>
	
	<script type="text/javascript" charset="utf-8" src="../../ueditor/uedito	r.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="../../ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="../../ueditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
		
	function zxLogin(){
		$.post("../../adminServlet",{op:"zxLogin"},function(data){
			if(data>0){
				window.location.href="../login.html";
			}
		});
	}

			
	</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
		<span>欢迎你:${admin.aname}</span>
		<a href="javascript:zxLogin()"><font color="#FF0000" size="2">注销</font></a>
	</div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:200px;padding:10px;">
		<ul class="easyui-tree" id="menu_tree">
			<li>
				<span>菜单</span>
				<ul>
					<li>管理员管理</li>
					<li>商品管理</li>
					<li>商品类型管理</li>
					<li>订单管理</li>
				</ul>
			</li>
		</ul>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;padding:10px;">
	帮助
	</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">
	底部版权
	</div>
	<div data-options="region:'center',title:'操作'">
		<div id="center_area" class="easyui-tabs" data-options="fit:true">
		</div>
	</div>
</body>
