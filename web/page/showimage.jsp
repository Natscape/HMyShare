<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
	<title>趣分享-发照片</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0">
	<script type="text/javascript" src="zepto.min.js"></script>
</head>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
	body{
		background-color: #FAFAFA;
	}
	.show_top{
		width: 100%;
		height: 40px;
		position: fixed;
		top: 0px;
		left: 0px;
		background-color: #F9F9F9;
		border-top: 1px solid #D6D6D6;
		border-bottom: 1px solid #D6D6D6;
		-moz-box-shadow:2px 2px 5px #D6D6D6; 
		-webkit-box-shadow:2px 2px 5px #D6D6D6; 
		box-shadow:2px 2px 5px #D6D6D6;
		z-index: 1000;
	}
	.show_top a{
		display: block;
		width: 40px;
		height: 40px;
		margin-left: 5px;
		text-decoration: none;
		line-height: 40px;
		color: #FF0000;
	}
	.show_top_right{
		width: 40px;
		height: 40px;
		text-align: center;
		line-height: 25px;
		position: absolute;
		top:7px;
		right: 5px;
		color: #A5A5A5;
	}
	.show_main{
		width: 96%;
		height: auto;
		position: absolute;
		top:42px;
		left: 0px;
		background-color: #FFFFFF;
		padding-left: 2%;
		padding-right: 2%;
		padding-top: 4px;
		padding-bottom: 20px;
		border-bottom: 1px solid #EAEAEA;
	}
	#title{
		width: 90%;
		height: 15px;
		position: absolute;
		top:4px;
		left: 2%;
		margin-left: 5px;
		z-index: 1;
		font-size: 12px;
		line-height: 15px;
	}
	#imagetitle{
		width: 90%;
		height: 15px;
		color: #A5A5A5;
		position: absolute;
		left: 2%;
		margin-left: 5px;
		border:none;
		outline: none;
		z-index: 2;
		opacity: 0.8;
		color:#000000;
	}
	.imgshow{
		width: 100%;
		height: auto;
		padding-top: 60px;
	}
	.imgshowa{
		width: 25%;
		border:4px solid #FFFFFF;
		float: left;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
		overflow: hidden;
	}
	.jiajia{
		width: 25%;
		height: 90px;
		border:4px solid #FFFFFF;
		float: left;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
	}
	.jiajiaxin{
		width: 100%;
		height: 100%;
		border:1px solid #DBDFDE;
		color:#DBDFDE;
		text-align: center;
		line-height: 82px;
		font-size: 80px;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
	}
</style>
<body>
<!--顶部栏-->
<div class="show_top">
	<a href="#">取消</a>              <!--动态链接从哪个页面来就回那个页面去-->
	<div class="show_top_right">发表</div>
</div>
<div class="show_main">
	<div id="title">添加小标题</div>
	<input type="text" id="imagetitle" maxlength="12"> <!--此处小标题只允许用户输入12个字-->
	<div class="imgshow">
		<div class="imgshowa">
			<img src="img/1.jpg">
		</div>

		<div class="jiajia">
			<div class="jiajiaxin">+</div>
		</div>

	</div>
</div>
<script type="text/javascript">
	window.onload=function(){
		$(".imgshowa").css("height",$(".imgshowa").css("width"));
		$(".jiajia").css("height",$(".imgshowa").css("width"));
		var lineHeight=$(".imgshowa").css("width").replace("px","")-8;
		$(".jiajiaxin").css("line-height",lineHeight+"px");
	}
	$("#imagetitle").keyup(function(){
		if ($("#imagetitle").val()!="") {
			$("#title").hide();
		}else{
			$("#title").show();
		}
	});
	$(".jiajiaxin").tap(function(){
		$(".jiajiaxin").css("border","1px solid #AFB3B2").css("color","#AFB3B2");            /*此处便是点击添加图片按钮，调用手机中的相册，选择图片*/
	});
</script>
</body>
</html>