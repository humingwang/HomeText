<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-table.css" />
<link rel="stylesheet" href="css/mmss.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-table.js"></script>
<script src="js/bootstrap-table-zh-CN.js"></script>



<title>订单处理</title>

<script type="text/javascript">
//初始化表格数据
$('#allTestRec').bootstrapTable({
	method : 'get',
	url : '../order/handing',
	height : $(window).height() - 200,
	cache : false,
	striped : true,
	pagination : true,
	dataType : "json",
	pageList : [1,2,5,10],
	pageSize : 3,
	pageNumber : 1,
	search : true,
	sidePagination : 'client',
	showColumns : true,
	minimumCountColumns : 2,
	clickToSelect : true,
	showToggle : true,
	
	columns : [ {
		field : '',
		valign: 'middle',
		checkbox : true
	}, {
		field : 'recId',
		title : '测试成绩ID',
		sortable : true,
		valign: 'middle',
		align: 'center'
	}, {
		field : 'cid',
		title : '用户ID',
		valign: 'middle',
		sortable : true,
		align: 'center'
	}, {
		field : 'testType',
		title : '测试科目',
		valign: 'middle',
		sortable : true,
		align: 'center'
	}, {
		field : 'testKind',
		title : '出题方式',
		sortable : true,
		valign: 'middle',
		align: 'center'
	}, {
		field : 'testDate',
		title : '测试时间',
		sortable : true,
		valign: 'middle',
		align: 'center'
	}, {
		field : 'errorCount',
		title : '错误总数',
		sortable : true,
		valign: 'middle',
		align: 'center'
	}, {
		field : 'qID',
		title : '错题ID集',
		valign: 'middle',
		align: 'center'
	}, {
		field : 'recTemp',
		title : '备用字段',
		valign: 'middle',
		align: 'center'
	} ,{field : 'operate',title: '操作',width: 100,align: 'center',valign: 'middle',
			formatter:function(value,row,index){
				var edit = '<a onclick="member_edit(\''+ row.qid + '\')">编辑</a> ';  
				var del = '<a onclick="member_del(\''+ row.qid +'\')">删除</a> '; 
				var str = edit + "&nbsp;" + del;
				return str;
			}
	} 
	]
	
},"json");
</script>
</head>
<body>
	<table id="allTestRec">
	</table>
</body>
</html>
    