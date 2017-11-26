<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
  	<style type="text/css">
  	.sp {margin: 6px;}
  	</style>
  </head>
  
  <body>
	  <%@include file="header.jsp" %>
	  <div class="content">
	  <div style="width: 200px;margin-left: auto;margin-right: auto">
		  <h3>注册</h3>
		  <%-- ${result}
		  <form action="StudentAction!regist" method="post">
			  <div><input type="text" name="stu.user_id" /></div>
			  <div><input type="text" name="stu.psw" /></div>
			  <div><input type="submit" /></div>
		  </form> --%>
	  <div class="row ">
		  ${result}
		  <form action="StudentAction!regist" method="post">
			  学号：<input type="text" class="sp form-control col-sm-4" name="stu.user_id" value="" />
			 <br/> 密码：<input type="password" class="sp form-control  col-sm-4" name="stu.psw" value="" />
			 <br/> 重复密码：<input type="password" class="sp form-control  col-sm-4" name="" value="" />
			 <input type="submit" class="sp form-control col-sm-4" value="注册"/>
		  </form>
	  </div>
	  </div>
	  </div>
  </body>
</html>
