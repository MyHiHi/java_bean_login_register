<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TTע��ƽ̨</title>
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
  <script>
  /*	$(document).ready(function(){
  		$("#name").blur(("checkReg.do",{"username":$("#name").val(),},function(data){
  			data=JSON.stringify(data);
  			alert(data+"");
  			$("#tip").html(data);
  		}));
  	});
  	*/
  </script>
  	<style>
  		#box{
  				margin-top:100px;
  				
  		}
  		a{
  			decoration:none;
  		}
  		*{
  				font-family: "΢���ź�";
  		}
  	</style>
  </head>
  
  <body style="background-color:springgreen;">
  	<h1><a href="Index.jsp"> TT��ҳ</a></h1>
  	<h3 id="tip"></h3>
    <div id="box">
    	<form class="form-horizontal" action="register.do" method="post" onsubmit="return check();">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">�û���</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="username"  placeholder="���������û���"><p id="fn"></p>
    </div>
   
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">����</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" name="password" placeholder="������������"><p id="fp"></p>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">������������</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="age" name="age" placeholder="������12-100֮��"><p id="fa"></p>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">��ס��ַ</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="addr" name="address" placeholder="�������ľ�ס��ַ">
    </div>
  </div>
  
  <div class="form-group" style="margin-left:200px;display: inline-block;">

 
	 <label class="radio-inline">
	 <input type="radio" name="gender" id="inlineRadio1" value="1"> ��
	</label>
	</div>
	<div class="form-group" style="margin-left:200px;display: inline-block;">
	<label class="radio-inline">
	  <input type="radio" name="gender" id="inlineRadio2" value="0"> Ů
	</label>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">ע��</button>
       <div id="tip"></div>
    </div>
  </div>
	</form>
    </div>
   
  </body>
  <script type="text/javascript">
  				function check(){
  				console.log("****")
	  				//var flag=true;
	  				if ($("#name").val()==''){
	  						//$("#name").Attr("placeholder","�û�������Ϊ��")
	  						alert("�û�������Ϊ��");
	  						return false;
	  				}
	  				if ($("#pwd").val()==''){
	  						//$("#pwd").Attr("placeholder","���벻��Ϊ��")
	  						alert("���벻��Ϊ��");
	  						return false;
	  				}
	  				if (parseInt($("#age").val())<12 || parseInt($("#age").val())>100){
	  						//$("#age").Attr("placeholder","��������12��100֮��")
	  						alert("��������12��100֮��");
	  						return false;
	  				}
	  				return true;
  				}
  				
  				
  				
   $(document).ready(function(){
   var xmlhttp;
    function createXMLHttp() {
        if (window.ActiveXObject) {
            //ie  
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } else {
            //firefox  
            xmlhttp = new XMLHttpRequest();
        }

    }
    
    
    function checkUserName() {
        createXMLHttp();
        var username = document.getElementById("name").value;
        //  alert(username);
        

        xmlhttp.open("POST", "checkReg.do", true);
        xmlhttp.setRequestHeader("Content-type",
                "application/x-www-form-urlencoded");
        xmlhttp.send("username=" + username);
        xmlhttp.onreadystatechange = function() {
            //      alert(xmlhttp.readyState);
            //      alert(xmlhttp.status);
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                console.log(xmlhttp.responseText);
                document.getElementById("tip").innerHTML = xmlhttp.responseText;
            }
        }
    }
    
    
    
    
   /*
  			function callBackData()
  		    {
  		      message = request.responseText;
  		   
  		      document.getElementById("tip").innerHTML=message;
  		    }
  			 							
  				$("#name").blur(function(){
  					
  					var username = $("#name").val();
  				    //alert(username);
  				      request.onreadystatechange=callBackData;
  				      request.open("post","checkReg.do",true);
  				      request.send();
  				}); 
  				*/
  			});
  					
  		
  </script>
</html>
