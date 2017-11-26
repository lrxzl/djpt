<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<link rel="stylesheet" href="css/header.css" />
</head>
<body>
<!-- 头部 -->
	<div class="top">
			<div class="top_link">
				<div class="login">
					<s:if test="#session.stu_session == null">
					<a href="login.jsp" style="color:white">我要入党</a>
				</s:if>
				<s:else>
					欢迎你，${session.stu_session.name}
					<a href="StudentAction!loadStuInfo" style="color:white">我的信息</a>
					<a href="StudentAction!logout" style="color:white">退出登录</a>
				</s:else>
				</div>
			</div>
			<div class="menubar">
				<ul>
					<li>
						<a href="index.jsp">首页</a>
					</li>
					<li>
						<s:if test="#session.stu_session==null">
	                		<a href="login.jsp">智慧党建</a>
	               	 	</s:if>
	                	<s:else> 
	                		<a href="enterparty.jsp">智慧党建</a>
	                	</s:else>
					</li>
					<li>
						<a href="enterParty.jsp">组织机构</a>
					</li>

					<li>
						<a href="enterParty.jsp">党员风采</a>

					</li>
					<li>
						<a href="enterParty.jsp">学习园地</a>
					</li>

					<li>
						<a href="enterParty.jsp">组织联系</a>

					</li>
				</ul>
			</div>
		</div>
</body>
</html>