<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-bg">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.html">萍乡学院 - 智慧党建平台</a></h1>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			            	<h4>萍乡学院 - 智慧党建平台</h4>
			                <h6>后台登录</h6>
			                <div class="social">
	                            <a class="face_login" href="#">
	                                <span class="face_icon">
	                                    <img src="images/登录.png" alt="fb" width="28px"/>
	                                </span>
	                                <span class="text">后台登录</span>
	                            </a>
	                            <div class="division">
	                                <hr class="left">
	                                <hr class="right">
	                            </div>
	                        </div>
			                <form id="loginForm" action="AdminAction!login" method="post">
							  	  ${result}
								  <fieldset>
								  	<input class="form-control" name="admin.admin_id" value="admin" type="text" placeholder="E-mail address">
			                		<input class="form-control " name="admin.psw" value="admin" type="password" placeholder="Password">
									  <div class="action">
					                      <a class="btn btn-primary signup" href="#" onclick="javascript:loginForm.submit()">登录</a>
					                  </div>
								  </fieldset>
							  </form>
			            </div>
			            <a href="../index.jsp">返回首页</a>
			        </div>

			        <div class="already">
			        </div>
			    </div>
			</div>
		</div>
	</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>