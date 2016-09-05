<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/style.css" />
		<link href="assets/css/codemirror.css" rel="stylesheet">
			<link rel="stylesheet" href="assets/css/ace.min.css" />
			<link rel="stylesheet" href="font/css/font-awesome.min.css" />
			<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
			<script src="js/jquery-1.9.1.min.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>
			<script src="assets/js/typeahead-bs2.min.js"></script>
			<script src="assets/js/jquery.dataTables.min.js"></script>
			<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
			<script src="assets/layer/layer.js" type="text/javascript"></script>
			<script src="assets/laydate/laydate.js" type="text/javascript"></script>
			<title>留言</title>
</head>

<body>
	<div class="margin clearfix">
		<div class="Guestbook_style">
			<div class="search_style">
				<div class="title_names">搜索查询</div>
				<ul class="search_content clearfix">
					<li><label class="l_f">留言</label><input name="" type="text"
						class="text_add" placeholder="输入留言信息" style="width: 250px"></li>
					<li><label class="l_f">时间</label><input
						class="inline laydate-icon" id="start" style="margin-left: 10px;"></li>
					<li style="width: 90px;"><button type="button"
							class="btn_search">
							<i class="icon-search"></i>查询
						</button></li>
				</ul>
			</div>
			<div class="border clearfix">
				<span class="l_f"> <a href="javascript:ovid()"
					class="btn btn-danger"><i class="fa fa-trash"></i>&nbsp;批量删除</a> <a
					href="javascript:ovid()" class="btn btn-sm btn-primary"><i
						class="fa fa-check"></i>&nbsp;已浏览</a> <a href="javascript:ovid()"
					class="btn btn-yellow"><i class="fa fa-times"></i>&nbsp;未浏览</a>
				</span> <span class="r_f">共：<b>${count }</b>条
				</span>
			</div>
			<!--留言列表-->
			<div class="Guestbook_list">
				<table class="table table-striped table-bordered table-hover"
					id="sample-table">
					<thead>
						<tr>
							<th width="25"><label><input type="checkbox"
									class="ace"><span class="lbl"></span></label></th>
							<th width="80">ID</th>
							<th width="150px">用户名</th>
							<th width="">留言内容</th>
							<th width="200px">时间</th>
							<th width="250">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${assesses }" var="assess">
							<tr>
								<td><label><input type="checkbox" class="ace"><span
											class="lbl"></span></label></td>
								<td>${assess.asid }</td>
								<td><u style="cursor: pointer" id="cname"
									class="text-primary"
									onclick="member_show('张小泉','member-show.html','1031','500','400')"></u>${assess.cname }</td>
								<td class="text-l"><a href="javascript:;"
									onclick="Guestbook_iew('${assess.asid }')">${assess.ascount }</a>
									<td>${assess.asdate }</td>
									<td class="td-manage"><a
										onclick="member_edit('回复','member-add.html','4','','510')"
										title="回复" href="javascript:;" class="btn btn-xs btn-info"><i
											class="fa fa-edit bigger-120"></i></a> <a href="javascript:;"
										onclick="member_del(this,'${assess.asid }')" title="删除"
										class="btn btn-xs btn-warning"><i
											class="fa fa-trash  bigger-120"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!--留言详细-->
	<div id="Guestbook" style="display: none">
		<div class="content_style">
<!-- 	<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">留言用户 </label>
       <div class="col-sm-9" id="cname"></div>
	</div>
   <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 留言内容 </label>
       <div class="col-sm-9">三年同窗，一起沐浴了一片金色的阳光，一起度过了一千个日夜，我们共同谱写了多少友谊的篇章?愿逝去的那些闪亮的日子，都化作美好的记忆，永远留在心房。认识您，不论是生命中的一段插曲，还是永久的知已，我都会珍惜，当我疲倦或老去，不再拥有青春的时候，这段旋律会滋润我生命的每一刻。在此我只想说：有您真好!无论你身在何方，我的祝福永远在您身边!</div>
	</div>
    <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">是否回复 </label>
       <div class="col-sm-9">
       <label><input name="checkbox" type="checkbox" class="ace" id="checkbox"><span class="lbl"> 回复</span></label>
       <div class="Reply_style">
          <textarea name="权限描述" class="form-control" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea>
          <span class="wordage">剩余字数：<span id="sy" style="color:Red;">200</span>字</span>
       </div>
       </div>
	</div> -->  
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
 /*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url+'#?='+id,w,h);
}
/*留言-删除*/
function member_del(obj,id){
	alert(id);
	$.post("../assess/delAssessById",{id:id},function(data){
		if(data>0){
			layer.confirm('确认要删除吗？',function(index){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			});
		}
	})
	
}


/*留言查看*/
function Guestbook_iew(id){
	$(".content_style").html("");
	$.post("../assess/findAssessById",{id:id},function(data){
		var str="";
		 	str+='<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">留言用户 </label>';
			str+='<div class="col-sm-9">'+data.cname+'</div>';
			str+='</div>';
			str+='<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">留言内容 </label>';
			str+='<div class="col-sm-9">'+data.ascount+'</div>';
			str+='</div>';
			str+='<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">是否回复</label>';
			str+='<div class="col-sm-9">';
			str+='<label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="res()"><span class="lbl"> 回复</span></label>';
			str+='<div class="Reply_style" id="Reply_style">';
			str+='<textarea name="权限描述" class="form-control" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea>';
			str+='<span class="wordage">剩余字数：<span id="sy" style="color:Red;">200</span>字</span>';
			str+='</div>';
			str+='  </div>';
			str+='</div>'; 
			$(".content_style").html(str); 
		
		var index=layer.open({
	        type: 1,
	        title: '留言信息',
			maxmin: true, 
			shadeClose:false,
	        area : ['600px' , ''],
	        content:$('#Guestbook'),
			btn:['确定','取消'],
			yes: function(index, layero){		 
			  if($('input[name="checkbox"]').prop("checked")){			 
				 if($('.form-control').val()==""){
					layer.alert('回复内容不能为空！',{
	               title: '提示框',				
				  icon:0,		
				  }) 
				 }else{			
				      layer.alert('确定回复该内容？',{
					   title: '提示框',				
					   icon:0,	
					   btn:['确定','取消'],	
					   yes: function(index){
						   $.post("../assess/response",{rid:rid,content:content,currentTime:currentTime,id:id},function(data){
							   if(data>0){
								   alert("回复成功!!!");
							   }
						   })
						     layer.closeAll();
						   }
					  }); 		  
			   }			
		      }else{			
				 layer.alert('是否要取消回复！',{
	               title: '提示框',				
				icon:0,		
				  }); 
				  layer.close(index);      		  
			  }
		   }
		})
	},"json");
	
};


function currentTime(){ 
    var d=new Date(),str=''; 
    str+=d.getFullYear()+'年'; 
    str+=d.getMonth() + 1+'月'; 
    str+=d.getDate()+'日'; 
    str+=d.getHours()+'时'; 
    str+=d.getMinutes()+'分'; 
    str+= d.getSeconds()+'秒'; 
    return str; 
} 

/*checkbox激发事件*/
function res(){
	if($('input[name="checkbox"]').prop("checked")){
		$('#Reply_style').css('display','block');
	}else{
		$('#Reply_style').css('display','none');
	}
}
	/*字数限制*/
function checkLength(which) {
	var maxChars = 200; //
	if(which.value.length > maxChars){
	   layer.open({
	   icon:2,
	   title:'提示框',
	   content:'您输入的字数超过限制!',	
    });
		// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
		which.value = which.value.substring(0,maxChars);
		return false;
	}else{
		var curr = maxChars - which.value.length; //250 减去 当前输入的
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
};
</script>
<script type="text/javascript">
jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,5,6]}// 制定列不参与排序
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
