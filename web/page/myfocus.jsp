<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
	<title>趣分享-我的关注</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0">
	<script type="text/javascript" src="zepto.min.js"></script>
</head>
<body>
此页面显示我关注的用户，你可以点击每个用户进入到用户的相册，就是myphoto.html一样的页面
</body>
</html>