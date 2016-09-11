<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
        <link href="assets/css/codemirror.css" rel="stylesheet">
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        		<!--[if !IE]> -->
		<script src="assets/js/jquery.min.js"></script>        
		<!-- <![endif]-->
           	<script src="assets/dist/echarts.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        
      
       <title>无标题文档</title>
      
       </head>
		
<body>
<div class="page-content clearfix">
 <div class="alert alert-block alert-success">
  <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
  <i class="icon-ok green"></i>欢迎使用<strong class="green">highgo后台管理系统<small>(v1.2)</small></strong>,你本次登陆时间为<span  class="time"><em id="time"></em></span>，登陆IP:${ip}	
 </div>
 
             <!--实时交易记录-->
             <div class="clearfix">
             <div class="t_Record">
               <div id="main" style="height:300px; overflow:hidden; width:100%; overflow:auto" ></div>     
              </div> 
         <div class="news_style">
          <div class="title_name">最新消息</div>
          <ul class="list">
           <li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">6月共处理订单3451比，作废为...</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
          </ul>
         </div> 
         </div>
 
<script type="text/javascript">
$(document).ready(function(){
	 
	  $(".t_Record").width($(window).width()-320);
	  //当文档窗口发生改变时 触发  
$(window).resize(function(){
	 $(".t_Record").width($(window).width()-320);
	});
});


  require.config({
      paths: {
          echarts: './assets/dist'
      }
  });
  require(
      [
          'echarts',
			'echarts/theme/macarons',
          'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
          'echarts/chart/bar'
      ],
      function (ec,theme) {
          var myChart = ec.init(document.getElementById('main'),theme);
          var arr1=[];
          var arr2=[];
          var arr3=[];
          var arr4=[];
			 $.post("../order/report",function(data){
				 for (var i = 0; i <data.length; i++) {
						 if(data[i].ostutas==1){
							arr1.push(data[i].omoney);
						 }else if(data[i].ostutas==2){
							 arr2.push(data[i].omoney);
						 }else if(data[i].ostutas==3){
							 arr3.push(data[i].omoney);
						 }
				}
				 
				 for (var i = 0; i <data.length; i++) {
					 arr4.push(arr1[i]+arr2[i]);
			}
         option = {
title : {
  text: '月购买订单交易记录',
  subtext: '实时获取用户订单购买记录'
},
tooltip : {
  trigger: 'axis'
},
legend: {
  data:['所有订单','待付款','已付款','代发货']
},
toolbox: {
  show : true,
  feature : {
      mark : {show: true},
      dataView : {show: true, readOnly: false},
      magicType : {show: true, type: ['line', 'bar']},
      restore : {show: true},
      saveAsImage : {show: true}
  }
},
calculable : true,
xAxis : [
  {
      type : 'category',
      data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
  }
],
yAxis : [
  {
      type : 'value'
  }
],
series : [
  {
      name:'所有订单',
      type:'bar',
      data:arr4,
      markPoint : {
          data : [
              {type : 'max', name: '最大值'},
              {type : 'min', name: '最小值'}
          ]
      }           
  },
  {
      name:'待付款',
      type:'bar',
      data:arr1,
       /* markPoint : {
          data : [
              {name : '年最高',  xAxis: 7, yAxis: 1182, symbolSize:18},
              {name : '年最低',  xAxis: 11, yAxis: 3}
          ]
      },  */
     
		
  }
	, {
      name:'已付款',
      type:'bar',
      data:arr2,
     /*  markPoint : {
          data : [
              {name : '年最高',  xAxis: 7, yAxis: 172, symbolSize:18},
              {name : '年最低',  xAxis: 11, yAxis: 3}
          ]
      }, */
     
	}
	, {
      name:'代发货',
      type:'bar',
      data:arr3,
     /*  markPoint : {
          data : [
              {name : '年最高',  xAxis: 7, yAxis: 1072, symbolSize:18},
              {name : '年最低',  xAxis: 11, yAxis: 3}
          ]
      } */
     
	}
]
}
              
          myChart.setOption(option);
			 },"json");
      }
  );
    </script> 
     </div>
</body>
</html>
