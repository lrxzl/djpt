<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'denied.jsp' starting page</title>
  </head>
  
  <body>
  <div>
  	<div align="center"><h2 style="color:gray;float:center;font-size: 32px;font-family:'Times New Roman',Georgia,Serif;">糟糕，没有权限</h2></div>
  	<div align="center" style="padding:20px"><img src="../img/denied.png"></div>
  </div>
  </body>
</html>
