<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TT登录平台</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<style>
		.form-horizontal{
			position:absolute;
            left:50%;
            top:50%;
            margin-left:-200px;
            margin-top:-200px;
		}
		*{
  				font-family: 微软雅黑;
  		}
  		#bg{
  			background-image: url(images/loginBG1.jpg);
  		}
	</style>
  </head>
  
  <body id="bg">
  <h1><a href="Index.jsp"> TT首页</a></h1>
<h3 class="lead" style="font-family: 幼圆"> <b> 如果希望成为一个善于谈话的人,那就先做一个致意倾听的人.</b></h3>
    <form class="form-horizontal" action="login.do" method="post" >
    
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-10">
      <input type="text" width="500px" class="form-control" id="inputEmail3" name="name" placeholder="输入您的用户名">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-10">
      <input type="password" width="500px"  class="form-control" name="password" id="inputPassword3" placeholder="输入您的密码">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group" style="display: inline-block;">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">登录</button>
    </div>
  </div>
  <div class="form-group" style="display: inline-block; margin-left:100px;">
    <div class="col-sm-offset-2 col-sm-10">
      <a class="btn btn-primary btn-lg" href="RegisterIndex.jsp" role="button">注册</a>
    </div>
  </div>
</form>
  </body>
  <script type="text/javascript">
  		$(document).ready(function(){
  			var bg=$("#bg");
  			var n=1,k=1;
  			setInterval(function(){
  			if (k%2==0)
  				n=1;
  			else n=2;
  			bg.css("background-image","url(images/loginBG"+n+".jpg)");
  			k++;
  			
  			}, 3000);
  		})
  		
  </script>
</html>
