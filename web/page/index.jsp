<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!-- 先检查用户是否登录，如果没有登陆从定向到登陆页 -->
<!DOCTYPE html>
<html>
<head>
	<title>趣分享主页</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1.0">
	<script type="text/javascript" src="<%=path %>/js/zepto.min.js"></script>
	<style type="text/css">
	*{
		padding: 0px;
		margin: 0px;
	}
	.bottomdaohang{
		width: 100%;
		height: 50px;
		background-color: rgba(0,0,0,0.8);
		position: fixed;
		left:0px;
		bottom: 0px;
		display: -webkit-flex;
	}
	.daohang{
		-webkit-flex:1;
		text-align: center;
		height:50px;
	}
	.daohang img{
		width: 40px;
		height: 40px;
		margin:5px auto;
	}
	/*以上为底部导航栏*/
	.webindex{
		width: 100%;
		height:auto;
		position: absolute;
		top: 0px;
		left:0px;
		padding-top:50px;
		padding-bottom: 50px;
	}
	.imageshow{
		width: 100%;
		height: auto;
		overflow: hidden;
		float: left;
	}
	.imageshow img{
		width: 100%;
		height: auto;
	}
	.imageshow_font{
		width: 100%;
		height: 60px;
		font-size: 12px;
		line-height: 60px;
		text-align: center;
	}
/*以上为网站主页*/
	.selfindex{
		width: 100%;
		height:100%;
		position:fixed;
		top:0px;
		left: 0px;
		display: none; 
	}
	.one_index{
		width: 100%;
		height: 100%;
		position: absolute;
		top: 0px;
		left: 0px;
		z-index: 1;
	}
	.one_index img{
		width: 100%;
		height: 100%;
	}
	.two_index{
		width: 100%;
		height: 200px;
		position: absolute;
		top:50%;
		margin-top:-100px;
		left: 0px;
		z-index: 2;
	}
	.two_index_1{
		height:100px;
		display: -webkit-flex;
		justify-content:space-around;
	}
	.two_index_1 a{
		display: block;
		text-decoration: none;
		width: 40%;
		height: 70px;
		background-color: red;
		margin-top: 15px;
		border-radius: 5px;
		display: -webkit-flex;
	}
	.two_index_1 a img{
		width: 30px;
		height: 30px;
		margin: 20px;
		display: -webkit-flex;
	}
	.two_index_1_1{
		-webkit-flex:1;
		height: 30px;
		line-height: 30px;
		text-align: center;
		color: #FFFFFF;
		margin-top: 20px;
	}
	.imgshow{
		width: 100%;
		height: 100%;
		position: fixed;
		top: 0px;
		left: 0px;
		background-color: #000000;
		display: none;
	}
	.imgshow_top{
		width: 100%;
		height: 40px;
		position: absolute;
		top:0px;
		left:0px;
		color:#FFFFFF;
		text-align: center;
		font-size: 14px;
		line-height: 40px;
		background-color: #000000;
		opacity: 0.8;
		display: none;
		z-index: 2;
	}
	.imgshow_top1{
		width:auto;
		height: auto;
		font-size: 30px;
		line-height: 40px;
		padding-left: 10px;
		position: absolute;
		left: 0px;
		top: 0px;
	}
	.imgshow_top3{
		width: 24px;
		height: 24px;
		padding: 8px;
		position: absolute;
		right: 0px;
		top: 0px;
	}
	.imgshow_top3 img{
		width: 24px;
		height: 24px;
		border:none;
	}
	.imgshow_center{
		width: 100%;
		height: 100%;
		position: absolute;
		left: 0px;
		bottom: 0px;
		z-index: 1;
	}
	.imgshow_bottom{
		width: 100%;
		height: 60px;
		background-color: #000000;
		opacity: 0.8;
		z-index: 2;
		position: fixed;
		bottom:0px;
		left: 0px;
		justify-content:space-around;
		display: -webkit-flex;
	}
	.imgshow_one{
		width: 30px;
		height: 60px;
	}
	.imgshow_one img{
		width: 30px;
		height: 30px;
		float: left;
		border: none;
	}
	.imgshow_onewenzi{
		width: 30px;
		height: 18px;
		padding-top: 2px;
		color: #FFFFFF;
		font-size: 14px;
		text-align: center;
	}
	.comment_details{
		width: 100%;
		height: 100%;
		position: fixed;
		bottom: 0px;
		left: 0px;
		background-color: #FFFFFF;
	}
	.comment_top{
		width: 98%;
		height: 30px;
		border-bottom: 1px solid #CCCCCC;
		border-top:1px solid #CCCCCC;
		position: fixed;
		top: 0px;
		left:0px;
		background-color: #FFFFFF;
		padding-left: 2%;
		z-index: 2;
	}
	.s{
		width: 30px;
		height:30px;
		line-height: 30px;
		text-align: left;
	}
	.comment_center{
		width: 100%;
		height: 100%;
		position: absolute;
		top:0px;
		left: 0px;
		padding:35px 0;
		overflow: auto;
		z-index: 1;
	}
	.comment_main{
		width: 96%;
		height: auto;
		border-bottom: 1px solid #F0F0F0;
		padding-top:15px;
		padding-bottom: 15px;
		margin-left:2%;
		margin-right: 2%;
		float: left;
	}
	.comment_main1{
		color:#000099;
		line-height: 25px;
	}
	.comment_main2{
		font-size: 18px;
		color:#000000;
		line-height: 24px;
	}
	.comment_bottom{
		width: 98%;
		padding: 5px 2% 4px 2%;
		height: 30px;
		position:fixed;
		left:0px;
		bottom: 0px;
		z-index: 2;
		box-shadow: -1px 0 0 1px #999999;
		display: -webkit-flex;
	}
	#thread{
		-webkit-flex:1;
		height: 29px;
		border:none;
		outline: none;
		border-bottom: 1px solid #999999;
		color:#999999;
	}
	.sendthread{
		width: 50px;
		height: 29px;
		line-height: 29px;
		text-align: center;
	}
	</style>
</head>
<body>

<div class="webindex">
	<div class="imageshow">
		<img src="<%=path %>/image/img/1.jpg" id="img1">      <!--此图片的ID就是每条说说的ID用于组合成的，从数据库调取数据-->
		<div class="imageshow_font">晚安，不再见</div>
	</div>

	<div class="imageshow">
		<img src="<%=path %>/image/img/2.jpg" id="img2">
		<div class="imageshow_font">我叫路飞，是要成为海贼王的男人</div>
	</div>

	<div class="imageshow">
		<img src="<%=path %>/image/img/3.jpeg" id="img3">
		<div class="imageshow_font">世界大剑豪</div>
	</div>

	<div class="imageshow">
		<img src="<%=path %>/image/img/4.jpg" id="img4">
		<div class="imageshow_font">女帝汉默克</div>
	</div>
</div>
<!--以上为图片展示页面-->
<div class="selfindex">
	<div class="one_index"><img src="<%=path %>/image/image/selfindex.jpg"></div>
	<div class="two_index">
		<div class="two_index_1">
			<a href="myphoto.html" style="background-color:#DAA520;opacity:0.9;">
			<img src="<%=path %>/image/image/picture1.png">
			<div class="two_index_1_1">相册</div>
			</a>
			<a href="myfocus.html" style="background-color:#B23AEE;opacity:0.9;">
				<img src="<%=path %>/image/image/focus1.png">
			<div class="two_index_1_1">关注</div>
			</a>
		</div>
		<div class="two_index_1">
			<a href="showimage.html" style="background-color:#003366;opacity:0.9;">
				<img src="<%=path %>/image/image/self1.png">
			    <div class="two_index_1_1">发图</div>
			</a>
			<a href="mycollection.html" style="background-color:#006400;opacity:0.9;">
				<img src="<%=path %>/image/image/collection1.png">
			<div class="two_index_1_1">收藏</div>
			</a>
		</div>
	</div>
</div>
<!--也上为个人主页面-->
<!--以下是点击图片弹出层-->
<div class="imgshow_top">
		<div class="imgshow_top1"> < </div>
		<span class="imgshow_top2">晚安，不再见</span>      
		<div class="imgshow_top3"><a href="myphoto.html?id=?"><img src="<%=path %>/image/image/user.png"></a></div>
	</div>
<div class="imgshow">
	

	<div class="imgshow_center">
		<img src>
	</div>
</div>
<!--此处4个按钮均需要为其绑定事件，而且每个都需要和数据库进行交互，分别为点赞，收藏，评论，下载-->
	<div class="imgshow_bottom">
		<div class="imgshow_one" id="praise">
			<img src="<%=path %>/image/image/praise.png">
			<div class="imgshow_onewenzi">点赞</div>
		</div>
		<div class="imgshow_one" id="shoucang">
			<img src="<%=path %>/image/image/shoucang.png">
			<div class="imgshow_onewenzi">收藏</div>
		</div>
		<div class="imgshow_one" id="comment">
			<img src="<%=path %>/image/image/comment.png">
			<div class="imgshow_onewenzi">评论</div>
		</div>
		<div class="imgshow_one" id="download">
			<img src="<%=path %>/image/image/download.png">
			<div class="imgshow_onewenzi">下载</div>
		</div>
	</div>
<!--以下时评论页面，用户点击上面的评论按钮，向上弹出此页面-->
<div class="comment_details">
	<div class="comment_top">
		<div class="s"><</div>
	</div>
	<div class="comment_center">
		<div class="comment_main">
		<div class="comment_main1">花溪雨</div>
		<div class="comment_main2">我就是要纵横贵大</div>
		</div>

		<div class="comment_main">
		<div class="comment_main1">二分之一秒</div>
		<div class="comment_main2">我要陪宇哥纵横贵大</div>
		</div>
	</div>
	<div class="comment_bottom">
		<input type="text" id="thread" value="写跟贴">
		<div class="sendthread">发送</div>
	</div>
</div>
<!--以下是底部导航模块-->	
<div class="bottomdaohang">
	<div class="daohang" id="showweb"><img src="<%=path %>/image/webhover.png" id="webimg"></div>
	<div class="daohang" id="showself"><img src="<%=path %>/image/image/self1.png" id="selfimg"></div>
</div>
<script type="text/javascript">
	/*页面加载初始化,页面所有数据加载出来之前让页面停留在一个加载页面，怎么破？？？？？？？？？？？？？？*/
	$(function(){
		$(".imgshow_bottom").hide();
		$(".comment_details").hide();
	});
	var zwin=$(window);
	$("#showweb").tap(function(){
		$("#webimg").attr("src","<%=path %>/image/image/webhover.png");
		$(".webindex").show();
		$(".selfindex").hide();
		$("#selfimg").attr("src","<%=path %>/image/image/self1.png");
	});
	$("#showself").tap(function(){
		$("#selfimg").attr("src","<%=path %>/image/image/selfhover.png");
		$(".selfindex").show();
		$(".webindex").hide();
		$("#webimg").attr("src","<%=path %>/image/image/web1.png");
	});
	/*网站主页图片点击触动函数*/
	var loadimg=function(imgSrc,imgId){
		var imgobj=new Image();
		imgobj.src=imgSrc;
		imgobj.onload=function(){
			var w=this.width;
			var h=this.height;
			var winwidth=zwin.width();
			var winheight=zwin.height();
			relW=parseInt(winheight*w/h);
			relH=parseInt(winwidth*h/w);
			marginLeft=parseInt((winwidth-relW)/2);
			marginTop=parseInt((winheight-relH)/2);
			if(h/w>1.2){
				$(".imgshow_center img").attr("height",winheight).attr("src",imgSrc).css("marginLeft",marginLeft+"px");
			}else{
				$(".imgshow_center img").attr("width",winwidth).attr("src",imgSrc).css("marginTop",marginTop+"px");
			}
		}

	}

	$(".imageshow img").tap(function(){
		var imgSrc=$(this).attr("src");
		var imgId=$(this).attr("id");
		var text=$(this).next().html();
		$(".imgshow_top2").html(text);
		$(".webindex").hide();
		$(".bottomdaohang").hide();
		$(".imgshow").show();
		$(".imgshow_top").show();
		$(".imgshow_bottom").show();
		loadimg(imgSrc,imgId);
	});
	/图片弹出层，点击显示或隐藏头部和底部DIV*/
	$(".imgshow").tap(function(){
		if($(".imgshow_top").css("display")=="none"){
			$(".imgshow_top").show();
			$(".imgshow_bottom").show();
		}else{
			$(".imgshow_top").hide();
			$(".imgshow_bottom").hide();
		}
	});
	<!--点击左上角返回图标返回网站主页-->
	$(".imgshow_top1").tap(function(){
		$(".imgshow_top").hide();
		$(".imgshow_bottom").hide();
		$(".imgshow").hide();
		$(".webindex").show();
		$(".bottomdaohang").show();
	});
	$("#comment").tap(function(){
		$(".imgshow").hide();
		$(".imgshow_top").hide();
		$(".imgshow_bottom").hide();
		$(".comment_details").show();
	});
	$("#thread").focus(function(){
		if($("#thread").val()=="写跟贴"){
			$("#thread").val("");
			$("#thread").css("color","#000000").css("border-bottom","1px solid #00CCFF");
		}
	});
	$("#thread").keyup(function(){
		if($("#thread").val()!=""){
			$(".sendthread").css("color","#0000FF");
		}else{
			$(".sendthread").css("color","#999999");
		}
	});
	$("#thread").blur(function(){
		if($("#thread").val()==""){
			$("#thread").css("color","#999999").css("border-bottom","1px solid #999999");
			$("#thread").val("写跟贴");
		}
	});
	$(".s").tap(function(){
		$(".comment_details").hide();
		$(".imgshow_top").show();
		$(".imgshow_bottom").show();
		$(".imgshow").show();
	});
</script>
</body>
</html>
