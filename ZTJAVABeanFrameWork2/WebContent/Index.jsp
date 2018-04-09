<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>INDEX</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap.min.js"></script>
	<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
  	<style>
  		*{
  				font-family: 微软雅黑;
  		}
  		.jumbotron{
  			background-color:rgba(255,255,255,0);
  			text-align: center;
  			width:500px;
            height:600px;
            position:absolute;
            left:50%;
            top:50%;
            margin-left:-250px;
            margin-top:-200px;
            line-height:400px;
            position:absolute;
            left:50%;
            top:50%;
            margin-left:-250px;
            margin-top:-400px;
  		}
  		#loginDiv{
  			margin-right:100px;
  		}
  		#box1{
  			
  			margin-top:100px;
  		}
  		#loginDiv{
  			display:inline-block;
  		}
  	</style>
  </head>
  
  <body style="background-image:url(images/indexBG.jpg)">
    <div class="jumbotron">
  <h1>Stay Hungry,Stay Foolish</h1>
  <h2>所谓的「耳聪」，也就是「倾听」的意思。</h2>
  <div id="box1">
  <div id="loginDiv">
  	<a class="btn btn-primary btn-lg" href="LoginIndex.jsp" role="button">登录</a>
</div>
	<a class="btn btn-primary btn-lg" href="RegisterIndex.jsp" role="button">注册</a>
</div>
</div>
  </body>
</html>
