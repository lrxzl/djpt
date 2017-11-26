<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'newsList.jsp' starting page</title>
    <style type="text/css">.news_list a{text-decoration: none;}</style>
  </head>
  
  <body>
  	  <s:action name="NewsAction!loadNewsList" namespace="/"></s:action>
  	  <ul>
	  <s:iterator value="#request.newsList" id="news">
		  <li>
		  	<a href="NewsAction!loadNewsContent?news.news_id=${news.news_id}">
		  		<s:if test="#news.title.length()>8">
		  			<s:property value="#news.title.substring(0,8)"/>..
		  		</s:if>
		  		<s:else>
		  			<s:property value="#news.title"/>
		  		</s:else>
		  	</a>
		  	<div style="width:auto;float:right;text-align:left;"><s:property value="#news.time"/></div>
		  </li>
	  </s:iterator>
	  </ul>
  </body>
</html>
