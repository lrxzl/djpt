<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'admin.jsp' starting page</title>
    
  </head>
  
  <body id="body">
  <%@include file="header.jsp" %>
  
  </body>
    
    <!-- 勿动代码 -->
    <script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="js/ajaxLib.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	var seriz = crtSeriz(["stu.name","aaa"], ["的2312就","a=2&d的"]);
    	//ajaxPost("AdminActionJson!test", seriz, null);
    });
    </script>
</html>
