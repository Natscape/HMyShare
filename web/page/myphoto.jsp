<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
	<title>趣分享-乔巴的相册</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0"> 
	<script type="text/javascript" src="zepto.min.js"></script>

<style type="text/css">
	*{
		padding: 0px;
		margin:0px;
	}
	.myphoto_top{
		width: 100%;
		height: 40px;
		background-color: #000000;
		position: fixed;
		top: 0px;
		left: 0px;
		color: #FFFFFF;
		text-align: center;
		line-height: 40px;
	}
	.photo{
		width: 100%;
		height: auto;
		margin-top: 60px;
	}
	.myphoto_main{
		width: 100%;
		height: auto;
		margin-top: 20px;
		float: left;
	}
	.photo_main1{
		width: 96%;
		height: 20px;
		padding-left: 2%;
	}
	.myphoto_main11{
		width: 100%;
		height: 20px;
		font-size: 18px;
	}
	.myphoto_main12{
		font-size: 12px;
	}
	.myphoto_main3{
		width: 96%;
		height: auto;
		padding-left: 2%;
	}
	.myphoto_main31{
		width: 25%;
		border:1px solid #FFFFFF;
		float: left;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
    	overflow: hidden;
	}
	/*.myphoto_main31 img{
		max-width: 100%;
		max-height: 100%;
	}*/
</style>
</head>
<body>
<div class="myphoto_top">
	乔巴的相册
</div>
<!--此div要用for循环从数据库调取数据-->
<div class="photo">
<div class="myphoto_main">
	<div class="photo_main1">
	<div class="myphoto_main11"><b>10月13日</b><span class="myphoto_main12">最帅的路飞</span></div>
	</div>
	<div class="myphoto_main3">
		<div class="myphoto_main31">
			<img src="img/2.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/3.jpeg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/4.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/1.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
	</div>
</div>

<div class="myphoto_main">
	<div class="photo_main1">
	<div class="myphoto_main11"><b>10月11日</b><span class="myphoto_main12">海贼王</span></div>
	</div>
	<div class="myphoto_main3">
		<div class="myphoto_main31"><img src="img/5.jpg"></div> 
		<div class="myphoto_main31"><img src="img/6.jpg"></div>      
	</div>
</div>


<div class="myphoto_main">
	<div class="photo_main1">
	<div class="myphoto_main11"><b>10月1日</b><span class="myphoto_main12">onpiece</span></div>
	</div>
	<div class="myphoto_main3">
		<div class="myphoto_main31">
			<img src="img/7.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/8.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/9.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/10.png">      <!--此处需要从数据库调取图片数据-->
		</div>
		<div class="myphoto_main31">
			<img src="img/11.jpg">      <!--此处需要从数据库调取图片数据-->
		</div>
	</div>
</div>

</div>
<!--上-->
<script type="text/javascript">
	window.onload=function(){
		$(".myphoto_main31").css("height",$(".myphoto_main31").css("width"));
		$(".myphoto_main31 img").each(function(){
				var w=$(this).width();
				var h=$(this).height();
				if(w>h){
					var biaow=$(".myphoto_main31").css("width").replace("px","");
					var relw=parseInt(w*biaow/h);
					var left=(-1)*parseInt((relw-biaow)/2);
					$(this).css("height",$(".myphoto_main31").css("width")).css("margin-left",left);
				}else{
					$(this).css("width",$(".myphoto_main31").css("width"));
				}
			});
	}
</script>
</body>
</html>