<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="Widget/zTree/css/zTreeStyle/zTreeStyle.css"
	type="text/css" />
<link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<script src="js/jquery-1.9.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="assets/laydate/laydate.js" type="text/javascript"></script>
<script src="js/showpic.js" type="text/javascript"></script>
<script src="js/ajaxfileupload.js" type="text/javascript"></script>

<script type="text/javascript"
	src="Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script>
<script src="js/lrtk.js" type="text/javascript"></script>
<title>产品列表</title>
</head>
<body>
	<div class=" page-content clearfix">
		<div id="products_style">
			<div class="search_style">
				<div class="title_names">搜索查询</div>
				<ul class="search_content clearfix">
					<li><label class="l_f">产品名称</label><input id="pname" name=""
						type="text" class="text_add" placeholder="输入品牌名称"
						style="width: 250px" /></li>
					<li><label class="l_f">添加时间</label><input
						class="inline laydate-icon" id="start" style="margin-left: 10px;" /></li>
					<li style="width: 90px;"><button type="button"
							onclick="findByND()" class="btn_search">
							<i class="icon-search"></i>查询
						</button></li>
				</ul>
			</div>
			<div class="border clearfix">
				<span class="l_f"> <a href="javascript:ovid()" title="添加商品" id="add_Product"
					class="btn btn-warning Order_form"><i class="icon-plus"></i>添加商品</a>
					<a href="javascript:delPros()" class="btn btn-danger"><i
						class="icon-trash"></i>批量删除</a>
				</span> <span class="r_f" >共：<a id="num"></a><b></b>件商品
				</span>  
			</div>
			<!--产品列表展示-->
			<div class="h_products_list clearfix" id="products_list">
				<div id="scrollsidebar" class="left_Treeview">
					<div class="show_btn" id="rightArrow">
						<span></span>
					</div>
					<div class="widget-box side_content">
						<div class="side_title">
							<a title="隐藏" class="close_btn"><span></span></a>
						</div>
						<div class="side_list">
							<div class="widget-header header-color-green2">
								<h4 class="lighter smaller">产品类型列表</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main padding-8">
									<div id="treeDemo" class="ztree"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="table_menu_list" id="testIframe">
					<table class="table table-striped table-bordered table-hover"
						id="sample-table">
						<thead>
							<tr>
								<th width="25px"><label><input type="checkbox"
										class="ace"><span class="lbl"></span></label></th>
								<th width="80px">产品编号</th>
								<th width="250px">产品名称</th>
								<th width="100px">产品描述</th>
								<th width="100px">价格</th>
								<th width="100px">规格</th>
								<th width="180px">加入时间</th>
								<th width="80px">浏览次数</th>
								<th width="70px">状态</th>
								<th width="200px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${lists}" var="item">
								<tr>
									<td width="25px"><label><input type="checkbox"class="ace">  </span></label></td>
									<td width="80px">${item.pid }</td>
									<td width="100px">${item.pname }</td>
									<td width="250px"><u style="cursor: pointer"
										class="text-primary" onclick="">${item.pdesc }</u></td>
									<td width="100px">${item.pprice }</td>
									<td width="100px">${item.pnorms }</td>
									<td width="180px">${item.pdate }</td>
									<td class="text-l">${item.pview }</td>
									<td class="td-status"><span
										class="label label-success radius">已启用</span></td>
									<td class="td-manage"><a
										onClick="member_stop(this,'10001')" href="javascript:;"
										title="停用" class="btn btn-xs btn-success"><i
											class="icon-ok bigger-120"></i></a> <a title="编辑"
										onclick="member_edit(${item.pid })" href="javascript:;"
										class="btn btn-xs btn-info"><i
											class="icon-edit bigger-120"></i></a> <a title="删除"
										href="javascript:;" onclick="member_del(this,'${item.pid }')"
										class="btn btn-xs btn-warning"><i
											class="icon-trash  bigger-120"></i></a></td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!--添加用户图层-->
	<div class="add_menber"  id="add_menber_style" style="display: none;width: 500px;">
		<div style="float:right; width:360px; margin-right: 20px;display: inline-block;position: absolute;">
 		<span>图片预览</span>
		<fieldset id="Product_pics_show" style="border: 1px #ccc ">
		</fieldset>
	</div>
		<form style="float:left; width: 500px;"  enctype="multipart/form-data" method="post"  id="add" >
		<c:if test="${not empty product.pid }">
			<input type="hidden" name="pid" value="" id="pid"></input>
		</c:if>
			<ul class=" page-content">
				<li><label class="label_name">产品名称：</label><span
					class="add_name"><input value="" name="pname" type="text"
						class="text_add" /></span>
					<div class="prompt r_f"></div></li>
				<li><label class="label_name">产品描述：</label><span
					class="add_name"><input name="pdesc" type="text"
						class="text_add" /></span>
					<div class="prompt r_f"></div></li>
				<li><label class="label_name">产品规格：</label><span
					class="add_name"><input name=pnorms type="text"
						class="text_add" /></span>
					<div class="prompt r_f"></div></li>
				<li><label class="label_name">产品价格：</label><span
					class="add_name"><input name="pprice" type="text"
						class="text_add" /></span>
					<div class="prompt r_f"></div></li>
				<li><label class="label_name">产品图片：</label><span
					class="add_name"><input name="pic" type="file" id="pict"
						class="text_add" multiple="multiple"
						onchange="previewMultipleImage(this,'Product_pics_show')" /></span>
					<div class="prompt r_f"></div>
					</li>
					
				<li class="adderss"><label class="label_name">加入时间：</label><span
					class="add_name"><input name="pdate" type="text"
						class="text_add" style="width: 350px" /></span>
					<div class="prompt r_f"></div></li>
				<li class="adderss"><label class="label_name">产品类型：</label><span class="add_name">
				    <select name="ptid" required="required">
					<option>选择类型</option>
					<c:forEach items="${types}" var="dept">
						<option value="${dept.ptid}">${dept.name}</option>
					</c:forEach>
			</select><br /><br /></span>
					<div class="prompt r_f"></div></li>
			</ul>
		</form>
	</div>
</body>
</html>
<script>
jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,5,8,9]}// 制定列不参与排序
		] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
					var off2 = $source.offset();
					var w2 = $source.width();
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			});
 laydate({
    elem: '#start',
    event: 'focus' 
});
$(function() { 
	$("#products_style").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		spacingw:30,//设置隐藏时的距离
	    spacingh:260,//设置显示时间距
	});
});
</script>
<script type="text/javascript">
//初始化宽度、高度  
 $(".widget-box").height($(window).height()-215); 
$(".table_menu_list").width($(window).width()-260);
 $(".table_menu_list").height($(window).height()-215);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height()-215);
	 $(".table_menu_list").width($(window).width()-260);
	  $(".table_menu_list").height($(window).height()-215);
	})
 
/*******树状图*******/
var setting = {
	view: {
		dblClickExpand: false,
		showLine: false,
		selectedMulti: false
	},
	data: {
		simpleData: {
			enable:true,
			idKey: "ptid",
			pIdKey: "fptid",
			rootPId: ""
		}
	},
	callback: {
		beforeClick: function(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if (treeNode.isParent) {
				zTree.expandNode(treeNode);
				return false;
			} else {
				$.post("../product/findByPtid/",{ptid:treeNode.ptid},function(data){
					if(data){
						location.reload();
						return true;
					}else{
						return false;
					}
				});
			}
		}
	}
};
  

    $.ajax({
        type: 'Post',
        url: '../productType/findAll/',
      	dataType: "json", //可以是text，如果用text，返回的结果为字符串；如果需要json格式的，可是设置为json
        success: function (data) {
    		$.fn.zTree.init( $("#treeDemo"), setting, data);
    		console.info(data);
    		
        },
        error: function (msg) {
            alert(" 数据加载失败！" + msg);
        }
    });
		
		
var code;
		
function showCode(str) {
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}
		
$(document).ready(function(){
	var zTree = $.fn.zTree.getZTreeObj("tree");
});	
/*产品-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*产品-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}

/*产品-添加*/
  $('#add_Product').on(
			'click',
			function() {
				layer.open({
					type : 1,
					title : '添加用户信息',
					maxmin : true,
					shadeClose : false, //点击遮罩关闭层
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '提交', '取消' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {
										layer.alert(str += "" + $(this).attr("name")
												+ "不能为空！\r\n", {
											title : '提示框',
											icon : 0,
										});
										num++;
										return false;
									}
								});
						if (num > 0) {
							return false;
						} else {
							alert( $("#add").serialize());
								$.ajaxFileUpload({
								url:"../product/add?" +$("#add").serialize(),
								secureuri:false,
								fileElementId:"pict",
								dataType:"json",
								success:function(data,status){
									if(data){
										alert('产品信息添加成功...','success');
										layer.close(index);
										findByND();
										// 刷新表格数据，分页信息不会重置
									}else{
										alert('店铺信息添加失败...','error');
									}
								}
								});

						}
					} 
				});
			});

 /*产品-添加*/
function member_edit(id){
	$.post("../product/findById?pid="+id,function(data){
		var str;
		$("input[name='pid']").val(data.pid);
		$("input[name='pname']").val(data.pname);
		$("input[name='pdesc']").val(data.pdesc);
		$("input[name='pnorms']").val(data.pnorms);
		$("input[name='pprice']").val(data.pprice);
		$("input[name='pdate']").val(data.pdate);
		$("select[name='ptid']").val(data.ptid);
		str="<img src=../"+data.pict+" width='60px';height='60px'; />&nbsp;&nbsp;"
		$("#Product_pics_show").html(str);

	},"json"); 
	layer.open({
		type : 1,
		title : '修改用户信息',
		maxmin : true,
		shadeClose : false, //点击遮罩关闭层
		area : [ '800px', '' ],
		content : $('#add_menber_style'),
		btn : [ '提交', '取消' ],
		yes : function(index, layero) {
			var num = 0;
			var str = "";
			$(".add_menber input[type$='text']").each(
					function(n) {
						if ($(this).val() == "") {
							layer.alert(str += "" + $(this).attr("name")
									+ "不能为空！\r\n", {
								title : '提示框',
								icon : 0,
							});
							num++;
							return false;
						}
					});
			if (num > 0) {
				return false;
			} else {
				$.ajaxFileUpload({
					url:"../product/update?" + $("#add").serialize(),
					secureuri:false,
					fileElementId:"pict",
					//dataType:"json",
					success:function(data,status){
						if(data){
							alert('成功提示','产品信息修改成功...','success');
							$("input[name='pid']").val();
							$("input[name='pname']").val();
							$("input[name='pdesc']").val();
							$("input[name='pnorms']").val();
							$("input[name='pprice']").val();
							$("input[name='pdate']").val();
							$("input[name='ptid']").val();
							layer.close(index);
							findByND();
						 
					    }else{
							alert('失败提示','店铺信息修改失败...','error');
						}
					}
					});
				
			}
		}
	});
	
}
$.ajax({
    type: 'Post',
    url: '../product/findCount/',
  	dataType: "json", //可以是text，如果用text，返回的结果为字符串；如果需要json格式的，可是设置为json
    success: function (data) {
    	document.getElementById("num").innerText = data; 
    	},
    error: function (msg) {
        alert(" 数据加载失败！" + msg);
    }
});
/*产品-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.post("../product/del",{pid:id},function(data){
		if(data){
			$(obj).parents("tr").remove();
			layer.msg('已删除!',{icon:1,time:1000});
			findByND();
		}else{
			alert("删除成功");
		}
	
		});
	});
}
/*批量删除*/
function delPros(){
	  var pros =[];//定义一个数组    
	  $('input:checked').each(function(){
		  pros.push($.trim($(this).val())); 
	   });
		alert(pros);
          if (pros != null) {
            	layer.confirm("数据删除后将不可恢复，确实要删除吗？", function () {
                $.post("../product/delpros",{pros:pros}, function (data) {
                	if(data>0){
                	layer.msg('数据删除成功!!!',{icon: 5,time:1000});
                	findByND();
                	}
                });
            }); 
             
         } else {
            layer.alert("请选择要删除的数据！");
        }  
}
/*按条件搜索*/
 function findByND(){
	var pname=$.trim($("#pname").val());
	var pdate=$.trim($("#start").val());
	$.post("../product/findAllBynd",{pname:pname,pdate:pdate},function(data){
			if(data){
				location.reload();
			}else {
				alert("表单加载失败");
			}
			});
};
//面包屑返回值
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('.Order_form').on('click', function(){
	var cname = $(this).attr("title");
	var chref = $(this).attr("href");
	var cnames = parent.$('.Current_page').html();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe').html(cname);
    parent.$('#iframe').attr("src",chref).ready();;
	parent.$('#parentIframe').css("display","inline-block");
	parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
    parent.layer.close(index);
	
});
</script>
