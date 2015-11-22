<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
	<title>趣分享-新用户注册</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0">-->
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=path%>/js/register.js"></script>
</head>
<style type="text/css">
	*{
		padding: 0px;
		margin: 0px;
	}
	body{
		background-color:#F0FFFF;
		color: #000000;
	}
	.register_top{
		width: 100%;
		height: 100px;
		position: absolute;
		top:0px;
		left:0px;
		background-color: #FFFFFF;
		border-bottom: 1px solid #CCCCCC;
		border-top:1px solid #CCCCCC;
		text-align: center;
		line-height: 100px;
		font-size: 60px;
	}
	.register_second{
		width: 94%;
		height: 60px;
		position: absolute;
		top: 120px;
		left:3%;
		color: #333333;
		font-size: 40px;
		line-height: 60px;
	}
	.register_main{
		width: 94%;
		height: 516px;
		position: absolute;
		top: 180px;
		left: 3%;
	}
	.register_main_one{
		width: 100%;
		height:120px;
		margin-bottom: 50px;
		position: relative;
		border:1px solid #CCCCCC;
		background-color: #FFFFFF;
		display: -webkit-flex;
		
	}
	.register_one_left{
		width:160px;
		height: 120px;
		line-height: 120px;
		font-size: 50px;
		display: -webkit-flex;
		padding-left:10px; 
	}
	#userphone{
		-webkit-flex:1;
		height: 60px;
		margin-top: 30px;
		border: none;
		outline: none;
		font-size: 50px;
	}
	#username{
		-webkit-flex:1;
		height: 60px;
		margin-top:30px;
		border:none;
		outline: none;
		font-size: 50px;
		}
	#password{
		-webkit-flex:1;
		height: 60px;
		margin-top:30px;
		border:none;
		outline: none;
		font-size: 50px;
	}
	#submit{
		width: 100%;
		height:120px;
		margin-bottom: 50px;
		font-size: 50px;
		text-align: center;
		line-height: 120px;
		color: #FFFFFF;
		background-color: #2E8B57;
	}
</style>
<body>
<div class="register_top">
	注册趣分享
</div>
<div class="register_second">
	注册成功后，可以分享图片，评论图片等。            <!--此DIV用于提示注册信息-->
</div>
<div class="register_main">
	<div class="register_main_one">
		<div class="register_one_left">手机号</div>
		<input type="text" id="userphone">
	</div>

	<div class="register_main_one">
		<div class="register_one_left">用户名</div>
		<input type="text" id="username">
	</div>
	<div class="register_main_one">
		<div class="register_one_left">密<sapn style="color:#FFFFFF">&nbsp;</sapn>码</div>
		<input type="password" id="password">
	</div>
	<div id="submit">注册</div>
</div>
</body>
</html>