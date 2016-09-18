<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link
	href="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.css"
	rel="stylesheet" />
<script src="assets/js/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='assets/js/jquery-2.0.3.min.js'>"
					+ "<"+"/script>");
</script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
				+ "<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="assets/laydate/laydate.js" type="text/javascript"></script>
<title>用户列表</title>
<script type="text/javascript">
	$(function() {
		initTable();
	});
	function initTable() {
		var queryUrl = '../order/handling';
		$('#sample-table').bootstrapTable( {
			method : 'get',
			url : queryUrl,
			height : $(window).height() - 200,
			striped : true,
			pagination : true,
			dataType : "json",
			pageList : [ 5, 8, 10 ],
			pageSize : 5,
			pageNumber : 1,
			search : true,
			sidePagination : 'client',
			showColumns : true,
			minimumCountColumns : 2,
			clickToSelect : true,
			showToggle : true,
			columns: [{
						 title: '',
						 checkbox:true
					  },
		              {
		                title: '订单号',
		                  field: 'oid',
		                  align: 'center',
		                  valign: 'middle',
		                  sortable: true
		              }, 
		              {
		                  title: '收货人',
		                  field: 'address.aname',
		                  align: 'center'
		              },{
		                  title: '地址',
		                  field: 'address.adetail',
		                  align: 'center',
		              },
		              {
		                  title: '联系方式',
		                  field: 'address.atel',
		                  align: 'center'
		              },
		              {
		                  title: '交易金额',
		                  field: 'omoney',
		                  align: 'center',
		              },
		              {
		                  title: '下单时间',
		                  field: 'odate',
		                  align: 'center',
		              },
		              {
		                  title: '订单状态',
		                  field: 'ostutas',
		                  align: 'center',
		              },
		              {
		                  title: '操作',
		                  field: 'id',
		                  align: 'center',
		                  formatter:function(value,row,index){  
		               var e = '<a href="#" mce_href="#" onclick="member_send(\''+ row.ostutas + '\',\''+ row.oid + '\')">发货</a> ';  
		               var d = '<a href="#" mce_href="#" onclick="member_del(this,\''+ row.oid +'\')">删除</a> ';
		                    return e+d;  
		                } 
		              }
		          ]
		});
	}
</script>
</head>

<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				<div class="search_style">
					<div class="title_names">搜索查询</div>
					<ul class="search_content clearfix">
						<li><label class="l_f">收货人</label><input name="name" type="text"
							class="text_add" placeholder="输入姓名、电话" style="width: 400px" /></li>
						<li><label class="l_f">添加时间</label><input
							class="inline laydate-icon" id="start" style="margin-left: 10px;" /></li>
						<li style="width: 90px;"><button type="button"
								class="btn_search">
								<i class="icon-search"></i>查询
							</button></li>
					</ul>
				</div>
				<!---->
				<!-- <div class="border clearfix">
					<span class="l_f"> <a href="javascript:ovid()"
						id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
						<a href="javascript:ovid()" class="btn btn-danger"><i
							class="icon-trash"></i>批量删除</a>
					</span> <span class="r_f">共：<b>2345</b>条
					</span>
				</div> -->
				<!---->
				<div class="table_menu_list">
					<table id="sample-table">
						
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--添加用户图层-->
	<div class="add_menber" id="add_menber_style" style="display: none">
		<form>
		<input type="hidden" name="usid" value="${user.usid}" id="usid"></input>
		<ul class=" page-content">
		
			<li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span
				class="add_name"><input value="" name="用户名" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			
			<li><label class="label_name">密码：</label><span
				class="add_name"><input name="密码" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">移动电话：</label><span
				class="add_name"><input name="移动电话" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">电子邮箱：</label><span
				class="add_name"><input name="电子邮箱" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">身份证：</label><span
				class="add_name"><input name="身份证" type="text"
					class="text_add" style="width: 350px" /></span>
				<div class="prompt r_f"></div></li>
		</ul>
		</form>
	</div>
</body>
<script type="text/javascript">
	/*发货*/
	function member_send(ostutas,oid) {
		if(ostutas==0){
			alert("商品已发货... ");
		}else if(ostutas==1){
			alert("顾客未付款...")
		}else if(ostutas==2){
			 $.post("../order/send?oid="+oid,function(data){
				 if(data>0){
					 alert("发货成功");
					 location.reload();
				 }
			},"json"); 
		}
	}
	/*删除*/
	function member_del(obj,id) {
		alert(id);
		layer.confirm('确认要删除吗？', function(index) {
			alert(id);
			$(obj).parents("tr").remove();
			$.post("../order/del",{oid:id},function(data){
				if(data){
					layer.alert('删除成功！', {
						title : '提示框',
						icon : 1,
					});
					location.reload();
				}else{
					layer.alert('删除失败！', {
						title : '提示框',
						icon : 1,
					});
				}
			});
		});
	}
	laydate({
		elem : '#start',
		event : 'focus'
	});
</script>
</html>
