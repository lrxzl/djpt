<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  
  <body>
  	管理登录
  <form action="AdminAction!login" method="post">
  	  ${result}
	  <fieldset>
		  <div><input type="text" name="admin.admin_id" value="admin" /></div>
		  <div><input type="password" name="admin.psw" value="admin"/></div>
		  <div><input type="submit" /></div>
	  </fieldset>
  </form>
  <a href="../index.jsp">返回首页</a>
  </body>
</html>
