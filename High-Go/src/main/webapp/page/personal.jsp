<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>个人信息</title>
<style type="text/css">
*{margin:0px;
padding:0px;}
body{
	background-color:#F1F1F1;}
ul li{
	list-style:none;
	}
.logo{
	width:990px;
	height:50px;
	float:left;
	margin-top:30px;
	margin-left:180px;
	background-color:#F1F1F1;
	border:1px solid #ccc;}
#dd{
	margin-bottom:25px;}
.logo1{
	margin-top:5px;
	width:730px;
	height:38px;
	margin-right:10px;
	float:right;
	background-color:#FE5500;
}
.logo1 ul li{
	font-size:16px;
	color:#FFF;
	line-height:38px;
	margin-left:20px;
	float:left;}
.body1{
	width:990px;
	height:630px;
	float:left;
	margin-left:180px;
	border:1px solid #ccc;}
.rigbody{
	width:140px;
	height:100%;
	float:left;
	}
.leftbody{
	width:848px;
	height:100%;
	float:left;
	background-color:#FFF;
	border:1px solid #ccc;}
.pic{
	margin-left:15px;
	margin-top:20px;}
.logo3{
	width:100%;
	height:20px;
	font-size:14px;
	border-bottom:1px solid #CCC;
	}
#uname{
	width:350px;
	margin-left:50px;
	height:30px;
	margin-top:30px;
}
.pho{
	width:150px;
	margin-left:50px;
	margin-top:20px;}
.photo{
	width:83px;
	height:81px;
	float:left;
	margin-top:-20px;
	margin-left:115px;
	background-image:url(../images/tao.png);
	border:1px solid #ccc;}
form{
	width:750px;
	height:340px;
	float:left;
	margin-top:60px;
	margin-left:-180px;
	border-bottom:1px solid #ccc; 
	}
span{
	width:200px;
	height:25px;
	font-size:14px;
	line-height:25px;
	color:#999;
	}
#cname{
	height:35px;
	line-height:35px;
	width:450px;}
.bor{
	width:750px;
	height:20px;
	float:left;
	margin-top:-30px;
	border-bottom:1px solid #ccc;}
#save{
	width:60px;
	height:30px;
	color:#FFF;
	background-color:#F93}
#save:hover{
	color:#000;}
#shiming,#address{
	height:35px;
	line-height:35px;
	width:150px;
	}
#bott{
	margin-top:30px;
	width:990px;
	height:89px;
	float:left;
	margin-left:180px;
	background-size:cover;}
	.bott2{
		width:1250px;
		height:50px;
		float:left;
		margin-top:40px;
		margin-left:200px;
		}
	.bott2 ul li{
		float:left;
		margin-left:30px;
		list-style:none;
		}
	.ziti{
		width:1250px;
		height:100px;
		float:left;
		margin-left:20px;
		}

</style>

</head>

<body>
	<div class="logo">
    	<img src="../images/wode.png">
    	<img id="dd" src="../images/beta.png">
        <div class="logo1">
        	<ul>
            	<li>首页</li>
                <li>账户设置</li>
            </ul>
        </div>
    </div>
    
    <div class="body1">
    	<div class="rigbody">
        	<img class="pic" src="../images/xiaotao.png">
        </div>
        <div class="leftbody">
        	<img src="../images/bian.png">
            <div class="logo3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基本资料</div>
            <div id="uname">亲爱的   ,填写真实的资料，有助于好友找到你哦。</div>
            <div class="pho">High-Go头像:<div class="photo"></div></div><br/><br/>
            <form action="" method="post">
            	昵称：<input id="cname"/><br/>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*昵称填写须知：与high-go或卖家品牌冲突，highgo宝将有可能收回</span><br/><br/>
                真实姓名：<input id="shiming"/><br/><br/>
                *性别：<input type="radio" name="sex" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="sex" value="女">女<br/><br/>
                生日：<select>
                	<option>1985</option>
                    <option>1986</option>
                    <option>1987</option>
                    <option>1988</option>
                    <option>1989</option>
                    <option>1990</option>
                    <option>1991</option>
                    <option>1992</option>
                    <option>1993</option>
                </select>年&nbsp;&nbsp;
                <select>
                	<option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                </select>月&nbsp;&nbsp;
                <select>
                	<option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    <option>16</option>
                    <option>17</option>
                    <option>18</option>
                    <option>19</option>
                    <option>20</option>
                    <option>21</option>
                    <option>22</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                    <option>28</option>
                    <option>29</option>
                    <option>30</option>
                    <option>31</option>
                </select>日<br/><br/>
                居住地：<input id="address"/><br/><br/>
                <div class="bor"></div>
                <input id="save" type="submit" value="保存"><br/><br/>
            </form>
        </div>
    </div>
    
    <footer style="height:110px;">
	<div class="bottom">
    	<img id="bott" src="../images/bottomlogo.png">
        <div class="bott2">
            <ul>
                <li><img src="../images/b1.png"></li>
                <li><img src="../images/b2.png"></li>
                <li><img src="../images/b3.png"></li>
                <li><img src="../images/b4.png"></li>
                <li><img src="../images/b5.png"></li>
                <li><img src="../images/b6.png"></li>
            </ul>
        </div>
    </div>
    <div class="ziti">
    <div style="border-top:solid #cac9c8 1px; width:50%; margin:auto;"></div>
    <div style="font-size:12px; margin:auto; text-align:center; margin-top:15px; color:#969492;">
    温馨提示：嗨购公司欢成立以来一直征求广大消费者的各种建议，嗨购将一步步完善，为广大消费者提供更优质的服务，更优越的产品。嗨购在以后的道路上会按照本公司的需求与调整满足消费者的合理条件。<br></div>
    	<div style="font-size:12px; margin:auto; text-align:center; margin-top:15px;color:#969492;">
            <p>湖南省衡阳市湖南工学院嗨购  &copy;&nbsp; 建立于2016 	嗨购公司版权所有</p></div>
 	 </div>
    </footer>
</body>
</html>
