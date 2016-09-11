<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link href="assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>   
        <script src="js/lrtk.js" type="text/javascript" ></script>		
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="assets/layer/layer.js" type="text/javascript" ></script>          
        <script type="text/javascript" src="Widget/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="Widget/swfupload/swfupload.queue.js"></script>
        <script type="text/javascript" src="Widget/swfupload/swfupload.speed.js"></script>
        <script type="text/javascript" src="Widget/swfupload/handlers.js"></script>
<title>广告管理</title>
</head>

<body>
<div class=" clearfix" id="advertising">
       <div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
     <div class="side_list">
      <div class="widget-header header-color-green2">
          <h4 class="lighter smaller">广告图分类</h4>
      </div>
      <div class="widget-body">
         <ul class="b_P_Sort_list">
             <li><i class="orange  fa fa-user-secret"></i><a href="javascript:void(0)" name="Ads_list.jsp" onclick="getAll()">全部(235)</a></li>
             <c:forEach items="${types }" var="type">
             	<li><i class="fa fa-image pink "></i> <a href="javascript:void(0)" name="Ads_list.jsp" onclick="getAllPics(this,'${type.phtid}')">${type.phtname }</a></li>
             </c:forEach>
         </ul>
  </div>
  </div>
  </div>  
  </div><div class="Ads_list">
   <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="ads_add" class="btn btn-warning" onclick="addAds()"><i class="fa fa-plus"></i> 添加广告</a>
        <a href="javascript:ovid()" class="btn btn-danger" onclick="del()"><i class="fa fa-trash"></i> 批量删除</a>
       </span>
       <span class="r_f">共：<b>${count} </b>条广告</span>
     </div>
     <div class="Ads_lists">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="25"><label><input type="checkbox" name="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80">ID</th>
				<th width="100">分类</th>
				<th style="width: 190px;">图片</th>
				<th width="150px">尺寸（大小）</th>
				<th width="180">加入时间</th>
				<th width="70">状态</th>                
				<th width="250">操作</th>
			</tr>
		</thead>
	<tbody id="tbody2">
	<c:forEach items="${pics }" var="pic">
      <tr>
       <td><label><input type="checkbox" name="checkbox" class="ace" value="${pic.phid }"><span class="lbl"></span></label></td>
       <td>${pic.phid }</td>
       <td>${pic.phname }</td>
       <td><span class="ad_img"><img src="../${pic.pict }"  width="100%" height="100%"/></span></td>
       <td>${pic.psize } </td>
       <td>${pic.phdate } </td>
       <td class="td-status">
       	<c:if test="${pic.phstatus!=0 }">
       		<span class="label label-success radius">显示</span></td>
			<td class="td-manage">
			<a onClick="member_stop(this,${pic.phid})"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>   
       	</c:if>
       	<c:if test="${pic.phstatus==0 }">
       		<span class="label label-defaunt radius">已关闭</span>
			<td class="td-manage">
			<a onClick="member_start(this,${pic.phid})"  href="javascript:;" title="显示"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>  
       	</c:if>
        <a title="编辑" onclick="member_edit(${pic.phid})" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
        <a title="删除" href="javascript:;"  onclick="member_del(this,'${pic.phid}')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
       </td>
      </tr>
       </c:forEach>
    </tbody>
    </table>
     </div>
 </div>
</div>
<!--添加广告样式-->
<div id="add_ads_style"  style="display:none">

 <form class="add_adverts" action="../file/uploadFile" method="post"  enctype="multipart/form-data">
 <ul>
  <li>
  <label class="label_name">所属分类</label>
  <span class="cont_style">
  <select class="form-control" id="form-field-select-1">
    <option value="">选择分类</option>
     <c:forEach items="${types }" var="type">
    	<option value="${type.phtid }">${type.phtname }</option>
    </c:forEach>
  </select></span>
  </li>
  <li><label class="label_name">图片尺寸</label><span class="cont_style">
   <input  type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:80px">
  <span class="l_f" style="margin-left:10px;"></span></span></li>
  	<li><label class="label_name">图片名称</label> <input type="text" style="width:100px;backgroundcolor:#fff;" id="getPhanme" /></li>
     <li><label class="label_name">图片</label><span class="cont_style">
 <div class="demo">
	           <div class="logobox"><div class="resizebox"><img src="" width="100px" alt="" height="100px"/></div></div>	
               <div class="logoupload">
                  <div class="btnbox"><input type="file" id="uploadBtnHolder" class="uploadbtn" value="上传图片"/>
                  </div>
                  <div><input type="submit" value="提交"/></div>
                  <div style="clear:both;height:0;overflow:hidden;"></div>
                  <div class="progress-box" style="display:none;">
                  </div>  <div class="prompt"><p>图片大小小于5MB,支持.jpg;.gif;.png;.jpeg格式的图片</p></div>  
              </div>                                
           </div>           
   </span>
  </li>
 
  
 </ul>
 </form>
</div>

<!--编辑图层-->
<div class="add_menber" id="add_menber_style" style="display:none">
    <!-- <ul class=" page-content">
     <li><label class="label_name">分&nbsp;&nbsp;类 &nbsp;名：</label><span class="add_name"><input value="" name="分类名" type="text"  class="text_add1"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">尺寸：</label><span class="add_name"><input name="尺寸" type="text"  class="text_add2"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">加入时间：</label><span class="add_name"><input name="加入时间" type="text"  class="text_add3"/></span><div class="prompt r_f"></div></li>
    </ul> -->
 </div>
 
</body>
</html>
<script>
//批量删除
function del() {
		//var len=$("input[name='checkbox']:checked").length;
		var phids ="";
		$("input:checked").each(function(){
			phids+=this.value+",";
		});
		alert(phids);
              if (phids != "") {
                	layer.confirm("数据删除后将不可恢复，确实要删除吗？", function () {
                    $.post("../photo/DeleteAds",{phids:phids}, function (data) {
                    	if(data>0){
                    	layer.msg('广告删除成功!!!',{icon: 5,time:1000});
                    	setTimeout("location.reload()",100);//页面刷新
                    	}
                    });
                }); 
                 
             } else {
                layer.alert("请选择要删除的数据！");
            }  
}

function addAds(){
	$.post("../photoType/getAllTypes");
}

//广告编辑
function member_edit(phid){
	var str="";
	$.post("../photo/editAds",{phid:phid},function(data){
	str+='<ul class=" page-content">';
	str+='<li><label class="label_name">分&nbsp;&nbsp;类 &nbsp;名：</label><span class="add_name"><input value="'+data.phname+'" name="分类名" type="text"  class="text_add1"/></span><div class="prompt r_f"></div></li>';
	str+='<li><label class="label_name">尺寸：</label><span class="add_name"><input name="尺寸" type="text" value="'+data.psize+'" class="text_add2"/></span><div class="prompt r_f"></div></li>';
	str+='<li><label class="label_name">加入时间：</label><span class="add_name"><input name="加入时间" type="text" value="'+data.phdate+'" class="text_add3"/></span><div class="prompt r_f"></div></li>';
	str+='</ul>';
	$("#add_menber_style").html(str);
	
	  layer.open({
        type: 1,
        title: '修改广告信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
        	 var phname=$(".text_add1").val();
        	var psize=$(".text_add2").val();
        	var phdate=$(".text_add3").val();
        	  $.post("../photo/updateAds",{phname:phname,psize:psize,phdate:phdate,phid:phid},function(data){
        		  if(data>0){
        			  layer.alert('添加成功！',{
        	               title: '提示框',				
        					icon:1,	
        					
        				  }); 
        		  }
        	  })
			   layer.close(index);	
		  }		  		     				
		}
    });
	}, "json");
};
		
		
		
function getAll(){
	$.post("../photo/getAll",function(data){
		var str="";
		for(var i=0;i<data.length;i++){
		str+='<tr>';
		str+='<td><label><input type="checkbox" name="checkbox" value="'+data[i].phid+'" class="ace"><span class="lbl"></span></label></td>';
		str+='<td>'+data[i].phid+'</td>';
		str+='<td>'+data[i].phname+'</td>';
		str+='<td style="width:80px;height:100px;"><span class="ad_img"><img src="../'+data[i].pict+'"  width="80%" height="100%"/></span></td>';
		str+='<td>'+data[i].psize+'</td>';
		str+='<td>'+data[i].phdate+'</td>';
		str+='<td class="td-status">';
		if(data[i].phstatus!=0){
			str+='<span class="label label-success radius">显示</span></td>';
			str+='<td class="td-manage">';
			str+='<a onClick="member_stop(this,'+data[i].phid+')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a> ';  
		}else{
			str+='<span class="label label-defaunt radius">已关闭</span>';
			str+='<td class="td-manage">';
			str+='<a onClick="member_start(this,'+data[i].phid+')"  href="javascript:;" title="显示"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a> ';  
		}
		str+='<a title="编辑" onclick="member_edit('+data[i].phid+')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>';      
		str+='<a title="删除" href="javascript:;"  onclick="member_del(this,'+data[i].phid+')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>';
		str+='</td>';
		str+='</tr>';}
		$("#tbody2").html(str);
	},"json")
}


function getAllPics(obj,phtid){
	$.post("../photo/getAllPhoto",{phtid:phtid},function(data){
		var str="";
		for(var i=0;i<data.length;i++){
		str+='<tr>';
		str+='<td><label><input type="checkbox" name="checkbox" value="'+data[i].phid+'" class="ace"><span class="lbl"></span></label></td>';
		str+='<td>'+data[i].phid+'</td>';
		str+='<td>'+data[i].phname+'</td>';
		str+='<td style="width:80px;height:100px;"><span class="ad_img"><img src="../'+data[i].pict+'"  width="80%" height="100%"/></span></td>';
		str+='<td>'+data[i].psize+'</td>';
		str+='<td>'+data[i].phdate+'</td>';
		str+='<td class="td-status">';
		if(data[i].phstatus!=0){
			str+='<span class="label label-success radius">显示</span></td>';
			str+='<td class="td-manage">';
			str+='<a onClick="member_stop(this,'+data[i].phid+')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a> ';  
		}else{
			str+='<span class="label label-defaunt radius">已关闭</span>';
			str+='<td class="td-manage">';
			str+='<a onClick="member_start(this,'+data[i].phid+')"  href="javascript:;" title="显示"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a> ';  
		}
		str+='<a title="编辑" onclick="member_edit('+data[i].phid+')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>';      
		str+='<a title="删除" href="javascript:;"  onclick="member_del(this,'+data[i].phid+')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>';
		str+='</td>';
		str+='</tr>';
		}
		$("#tbody2").html(str);
	},"json")
}

//初始化宽度、高度  
 $(".widget-box").height($(window).height()); 
 $(".Ads_list").width($(window).width()-220);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height());
	 $(".Ads_list").width($(window).width()-220);
	});
	$(function() { 
	$("#advertising").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		stylewidth:'220',
		spacingw:30,//设置隐藏时的距离
	    spacingh:250,//设置显示时间距
		set_scrollsidebar:'.Ads_style',
		table_menu:'.Ads_list'
	});
});
/*广告图片-停用*/
function member_stop(obj,id){
	$.post("../photo/stopAds",{id:id},function(data){
		if(data>0){
			layer.confirm('确认要关闭吗？',{icon:0,},function(index){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="显示"><i class="fa fa-close bigger-120"></i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已关闭</span>');
				$(obj).remove();
				layer.msg('关闭!',{icon: 5,time:1000});
			});
		}else{
			layer.alert("广告图片停用失败!!!");
		}
	})
	
}
/*广告图片-启用*/
function member_start(obj,id){
	$.post("../photo/startAds",{id:id},function(data){
		if(data>0){
			layer.confirm('确认要显示吗？',{icon:0,},function(index){
			$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="关闭"><i class="fa fa-check  bigger-120"></i></a>');
			$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">显示</span>');
			$(obj).remove();
			layer.msg('显示!',{icon: 6,time:1000});
		});
	}else{
		layer.alert("广告显示失败!!!");
	}
	})
}

/*广告图片-删除*/
function member_del(obj,id){
	$.post("../photo/delPhoto",{id:id},function(data){
		if(data>0){
			layer.confirm('确认要删除吗？',{icon:0,},function(index){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			});
		}else{
			layer.alert("删除失败!!!");
		}
	})
	
}



/*******添加广告*********/
 $('#ads_add').on('click', function(){
	  layer.open({
        type: 1,
        title: '添加广告',
		maxmin: true, 
		shadeClose: false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_ads_style'),
		btn:['提1交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_adverts input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
        		  layer.alert('添加成功！',{
                      title: '提示框',	
       				icon:1,	
       			  });
        		  setTimeout("location.reload()",100)//页面刷新
       			   layer.close(index);
		  }		  		     				
		}
    });
})
</script>

<script>
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,5,7,8,]}// 制定列不参与排序
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
			})
</script>
