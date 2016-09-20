<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<html lang="zh-cn" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品分类</title>
<link rel="stylesheet" type="text/css" href="../css/Product.css"/>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/js_z.js"></script>
<script type="text/javascript" src="../js/jquery.page.js"></script>
<script type="text/javascript" src="../js/product.js"></script>
<link rel="stylesheet" type="text/css" href="../css/thems.css"/>

</head>

<body>
<!--头部-->
<div class="head clearfix">
    <div class="logo"><a href="index.html"><img src="../images/logo.png" alt=""/></a></div>
    <div class="head_r">
    	<div class="shopcar"><a href="shopcar.html">我的购物车</a></div>
        <div class="by"><img src="../images/12.jpg" alt=""/></div>
    </div>
</div>
<ul class="nav clearfix" id="types">
</ul>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="scd">
	<div class="pst">
    	<span>您现在的位置：</span>
        <a href="">首页></a>
        <a href="" id="findType"></a>
    </div>
    <table cellpadding="0" cellspacing="0" class="p_search">
      <tr>
        <th scope="row">主要分类</th>
        <td colspan="2" id="fptid">
        </td>
        
      </tr>
      <tr>
        <th scope="row">其他分类</th>
        <td colspan="2">
        	<a href="" class="now">女戒</a>
            <a href="">男戒</a>
            <a href="">吊坠</a>
            <a href="">对戒</a>
            <a href="">耳钉</a>
        </td>
      </tr>
    </table>
	<div class="space_hx">&nbsp;</div>
     <ul class="pro_l clearfix"  id="prosList">

     
    	<!-- <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li> 
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li>
        <li>
        	<a href="product_d.html">
            	<img src="../images/cp14.jpg" alt=""/>
                <p>D000498(共1件)</p>
            </a>
        </li> -->
    </ul> 
    <div class="tcdPageCode" id="tcdPageCode"></div>
    <div class="tcdPageCode" id="tcdPageCode1"></div>
    <div class="tcdPageCode" id="tcdPageCode2"></div>
    
</div>
<div class="space_hx">&nbsp;</div>
<!--底部-->
<div class="foot">
<div class="bottom">
    	<img id="bott" src="../images/bottomlogo.png">
      
       
    </div>
	<p>温馨提示：嗨购公司欢成立以来一直征求广大消费者的各种建议，嗨购将一步步完善，为广大消费者提供更优质的服务，更优越的产品。嗨购在以后的道路上会按照本公司的需求与调整满足消费者的合理条件。</p>
	<p>湖南省衡阳市湖南工学院嗨购  &copy;&nbsp; 建立于2016 	嗨购公司版权所有</p>
</div>
<!--底部-->
</body>
</html>
    