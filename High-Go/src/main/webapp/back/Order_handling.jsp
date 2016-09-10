<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
        <script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>           	
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="assets/layer/layer.js" type="text/javascript" ></script>          
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>
<title>订单处理</title>
</head>

<body>
<div class="margin clearfix">
 <div>
 	<table class="table table-striped table-bordered table-hover" id="sample-table">
      <thead>
		 <tr>
          <th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
          <th width="80">ID</th>
          <th width="">购买商品</th>
          <th width="150">订单数</th>
          <th width="200px">时间</th>
          <th width="70">状态</th>                
          <th width="250">操作</th>
          </tr>
      </thead>
	<tbody>
		<tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>1</td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('张小泉','member-show.html','1031','500','400')">张小泉</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">“下单到包装全程冷链运输。</a>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">已浏览</span></td>
          <td class="td-manage">
           <a onClick="member_stop(this,'10001')"  href="javascript:;" title="已浏览"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>   
        <a  onclick="member_edit('回复','member-add.html','4','','510')" title="回复"  href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
        <a  href="javascript:;"  onclick="member_del(this,'1')" title="删除" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
        </tr>
        </tbody>
      </table>
 </div>

</div>
</body>
</html>
