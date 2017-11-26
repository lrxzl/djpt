<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'newsList.jsp' starting page</title>
  </head>
  
  <body>
  <%@include file="header.jsp" %>
  <%-- <s:action name="NewsAction!loadNewsList" namespace="/admin"></s:action> --%>
  
  <div><a href="newsAdd.jsp">添加新闻</a></div>
  
  <s:iterator value="#request.newsList" id="item">
  <div>
  	<a href="NewsAction!loadNewsContent?news.news_id=${item.news_id}">
  	<s:property value="#item.title"/></a>
  	
  	<a href="NewsAction!loadEditPage?news.news_id=${item.news_id}">修改</a>
  	
  	<a href="NewsAction!deleteNews?news.news_id=${item.news_id}">删除</a>
  </div>
  </s:iterator>
  </body>
</html>
