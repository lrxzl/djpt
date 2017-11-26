<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻页面</title>
<link rel="stylesheet" href="css/news.css" />
</head>
<body>
	<!-- 头部 -->
	<%@include file="../header.jsp" %>
	<div class="container">
			<div class="head">党建平台 >>
				<a href="#">首页</a> >>
				<a href="#">新闻资讯</a>
			</div>
			<div class="line"></div>
			<div class="title">${news.title}</div>
			<div class="news_type">新闻类别：${news.type} &nbsp; &nbsp; &nbsp;党建动态:${news.source} 发布时间：${news.time}</div>
			<div class="news_contents">
				${news.content}
			</div>
		</div>
		<div class="foot">
			<div class="border">
			</div>
			<div class="from">
				<p>中共萍乡学院信息与计算机工程学院委员会 © 2017 版权所有</p>
				<p>电子邮箱：396101935@qq.com 备案证编号：赣ICP备xxxxxx</p>
			</div>
		</div>
</body>
</html>