<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
	<title>趣分享-登录</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0">
	<style type="text/css">
	*{
		padding: 0px;
		margin: 0px;
	}
	body{
		background-color:#F0FFFF;
	}
	.login_top{
		width: 100%;
		height: 40px;
		background-color: #FFFFFF;
		position: absolute;
		top:0px;
		left: 0px;
		border-top:#cccccc 1px solid;
		border-bottom:1px solid #CCCCCC;
		text-align: center;
		line-height: 40px;
		font-size: 18px;
	}
	.lianjie a{
		display: block;
		width: 50px;
		height: 24px;
		text-decoration: none;
		color: #000000;
		font-size: 14px;
		text-align: center;
		line-height: 24px;
		border:1px solid #CCCCCC;
		position: absolute;
		top:7px;
		right:10px;
	}
	#tixing{
		width: 94%;
		height: 24px;
		color: red;
		font-size: 14px;
		line-height: 24px;
		position: absolute;
		top:42px;
		left:3%;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
    	display: none;
	}
	.login_one{
		width: 94%;
		height: 40px;
		background-color:#FFFFFF;
		position: absolute;
		border:1px solid #CCCCCC;
		display: -webkit-flex; 
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
	}
	#user{
		top:64px;
		left: 3%;
	}
	#pwd{
		top:119px;
		left:3%;
	}
	.login_oneleft{
		width: 50px;
		height: 40px;
		font-size: 14px;
		line-height: 40px;
		padding-left: 5px;
		display: -webkit-flex;
	}
	.biaodan{
		-webkit-flex:1;
		height:20px;
		font-size: 14px;
		margin-top: 10px;
		border:none;
		outline: none;
	}
	#login_submit{
		width: 94%;
		height: 40px;
		position: absolute;
		top:171px;
		left:3%;
		background-color: #B0E0E6;
		color: #FFFFFF;
		text-align: center;
		line-height: 40px;
		box-sizing: border-box; 
    	-webkit-box-sizing: border-box; 
    	-moz-box-sizing: border-box;
	}
	</style>
</head>
<body>
<div class="login_top">
	登录趣分享
	<div class="lianjie"><a href="register.jsp">注册</a></div>
</div>
<div id="tixing">*请输入密码！</div>  <!--此处需根据用户的操作动态显示不同的文字-->

<div class="login_one" id="user">
	<div class="login_oneleft">用户名</div>
	<input type="text" id="username" class="biaodan">
</div>
<div class="login_one" id="pwd">
	<div class="login_oneleft" >密<span style="color:#FFFFFF">你</span>码</div>
	<input type="password" id="password" class="biaodan">
</div>
<div id="login_submit">登录</div>        <!--此按钮待用户输完用户名和密码背景色改变-->
</body>
</html>