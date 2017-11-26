<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="stylesheet" href="css/login.css" />
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<!-- 头部 -->
	<%@ include file="header.jsp" %>
	<div class="container">
			<div class="main">
				<div class="frame">
					<div class="form">
					  ${result}
						<form action="StudentAction!login" method="post">
							<table border="0" width="400px" height="260px">
								<thead>
									<tr>
										<th id="title">登录党建管理平台</th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td><input type="text" name="stu.stuId" value="123" id="sno" placeholder="请输入学号" /></td>
									</tr>
									<tr>

										<td><input type="password" name="stu.psw" value="123" id="pwd" placeholder="请输入密码" /></td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" id="check_left" />下次自动登录

											<a href="/" id="check_right">忘记密码</a>

										</td>
									</tr>
									<tr>
										<td align="center">
											<button type="submit" class="btn btn-danger btn-lg active" id="button" value="submit">提交
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="border">

			</div>
			<div class="from">
				<p>中共萍乡学院信息与计算机工程学院委员会 © 2017 版权所有</p>
				<p>电子邮箱：396101935@qq.com 备案证编号：赣ICP备xxxxxx</p>
=======
﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
  <div class="content ">
  	<div style="width: 200px;margin-left: auto;margin-right: auto">
	  <center><h3>登录</h3></center>
	  <div class="row ">
		  ${result}
		  <form action="StudentAction!login" method="post">
			学号：<input type="text" class="sp  form-control col-sm-4" name="stu.stuId" value="123" />
			 <br/> 密码：<input type="password" class="sp form-control  col-sm-4" name="stu.psw" value="123" />
			 <input type="submit" class="sp form-control col-sm-4" />
		  </form>
		  <center><a href="regist.jsp">学生注册！</a></center>
	  </div>
	  </div>
  </div>
  
  <div class="bottom">
		<div class="bottom_top"></div>
		<div class="bottom_bot">
			<div class="bottom_p">
				<p>中共萍乡学院信息与计算机工程学院委员会 ©2017 版权所有</p>
				<p>电子邮箱：894442909@qq.com 备案证编号：赣ICP备10004543号-2</p>
				<p>15软件工程一班 项目团队设计制作&技术支持 <a href="admin/AdminAction!loadAdminPage">BackStage</a></p>
>>>>>>> e2ea7bd613d33b0356a6479b6bc75e8943ae60cc
			</div>
		</div>
</body>
</html>