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

											<a href="register.jsp" id="check_right">注册</a>

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
			</div>
		</div>
</body>
</html>