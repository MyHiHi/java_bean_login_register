<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TT������</title>
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
	<style type="text/css">
		#box2{
			margin-top:10%;
		}
	</style>
  </head>
  
  <body id="box" style="background-image:url(images/indexBG.jpg)">
    <nav class="navbar navbar-default  navbar-inverse" >
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Index.jsp">TTƽ̨</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">�ҵ�����Ȧ </a></li>
        <li><a href="#">�ҵ���Ϣ</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">���ߺ��� <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">����</a></li>
            <li><a href="#">Ц��</a></li>
            <li><a href="#">�˾�</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">����</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">����</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="����������">
        </div>
        <button type="submit" class="btn btn-default">����</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">${user.username}�ѵ�¼</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">�ñ�ֽ ������ <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="javascript:void(0);" id="bg1" onclick="changeBG1();return false;" style="color:green;"><b>������ɫ</b></a></li>
            <li><a href="javascript:void(0);" id="bg2" onclick="changeBG2();return false;" style="color:green;"><b>��ɫ��Ұ</b></a></li>
            
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div id="box2">
			<div class="progress">
	  <div class="progress-bar progress-bar-success" id="readData" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
	    0%
	  </div>
	</div>
</div>
  </body>
  <script type="text/javascript">
  			function changeBG1(){
  				$("#box").css("background-image","url(images/loginBG1.jpg)")
  			}
  			function changeBG2(){
  				$("#box").css("background-image","url(images/loginBG2.jpg)")
  			}
  		$(document).ready(function(){
  		
  			
  			var readData=$("#readData");
  			var p=0;
  			setInterval(function(){
  			console.log("&&&")
  				readData.css("width",p+"%");
  				readData.css("aria-valuenow",p+"");
  				readData.html("������ͣ��ظ������ݿ�"+p+"%");
  				p++;
  				if (p==100) p=0;
  				
  			}, 100)
  		})
  </script>
</html>
