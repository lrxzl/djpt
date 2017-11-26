<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>新闻管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

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
  <body>
  	<%@include file="header.jsp" %>
    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
			<div class="sidebar content-box" style="display: block;">
			     <ul class="nav">
			         <!-- Main menu -->
			         <li ><a href="AdminAction!loadAdminPage"><i class="glyphicon glyphicon-home"></i>管理首页</a></li>
			         <!-- <li><a href="calendar.html"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li> -->
			         <!-- <li ><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-list"></i> 学生党员列表 </a></li>
			          -->
			          <li class="submenu">
			         	<a href="#">
			                 <i class="glyphicon glyphicon-list"></i>入党列表 
			                 <span class="caret pull-right"></span>
			              </a>
		                  <ul>
		                  	  <li><a href="AdminAction!loadStuList">所有入党对象</a></li>
		                      <li><a href="AdminAction!loadStuList?type=入党积极份子">入党积极份子</a></li>
		                      <li><a href="AdminAction!loadStuList?type=预备党员">预备党员</a></li>
		                      <li><a href="AdminAction!loadStuList?type=正式党员">正式党员</a></li>
		                  </ul>
			         </li>
			         
			         <li class="submenu">
			              <a href="#">
			                 <i class="glyphicon glyphicon-list"></i> 审核
			                 <span class="caret pull-right"></span>
			              </a>
			              <!-- Sub menu -->
		                  <ul>
		                      <li><a href="AdminAction!loadUnderReviews">待审核</a></li>
		                      <li><a href="AdminAction!loadPassedReviews">已通过</a></li>
		                      <li><a href="AdminAction!loadRejectReviews">被驳回</a></li>
		                  </ul>
			          </li>			         
			          <li class="current"><a href="NewsAction!loadNewsList"><i class="glyphicon glyphicon-stats"></i> 新闻管理</a></li>
			         <!-- <li><a href="buttons.html"><i class="glyphicon glyphicon-record"></i> Buttons</a></li>
			         <li><a href="editors.html"><i class="glyphicon glyphicon-pencil"></i> Editors</a></li>
			         <li><a href="forms.html"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li> -->
			         <li ><a href="header_chart.jsp"><i class="glyphicon glyphicon-stats"></i> 统计</a></li>
			         <li class="submenu">
			              <a href="#">
			                 <i class="glyphicon glyphicon-list"></i> Pages
			                 <span class="caret pull-right"></span>
			              </a>
			              <!-- Sub menu -->
			                  <ul>
			                      <li><a href="login.html">Login</a></li>
			                      <li><a href="signup.html">Signup</a></li>
			                  </ul>
			              </li>
			          </ul>
			   </div>
			</div>
		  <div class="col-md-10">
  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title"><b>新闻管理</b></div>
				</div>
  				<div class="panel-body">
  					<div><a href="newsAdd.jsp">添加新闻</a></div>
  					<div class="table-responsive">
  						<table class="table">
			              <thead>
			                <tr>
			                  <th>序号</th>
			                  <th>标题</th>
			                  <th>类型</th>
			                  <th>小编</th>
			                  <th>时间</th>
			                  <th></th>
			                </tr>
			              </thead>
			              <tbody>
			              
			              <s:iterator value="#request.newsList" id="item" status="st">
						   <tr>
			                  <td>
			                  	<s:property value="#st.index+1"/>
			                  </td>
			                  <td>
			                  	<a href="../NewsAction!loadNewsContent?news.news_id=${item.news_id}">
						  		<s:property value="#item.title"/></a>
			                  </td>
			                  <td>
			                  	<s:property value="#item.type"/>
			                  </td>
			                  <td>
			                  	<s:property value="#item.source"/>
			                  </td>
			                  <td>
			                  	<s:property value="#item.time"/>
			                  </td>
			                  <td>
				                  <a href="NewsAction!loadEditPage?news.news_id=${item.news_id}">修改</a>&nbsp;&nbsp;
				                  <a href="NewsAction!deleteNews?news.news_id=${item.news_id}">删除</a>
			                  </td>
			                </tr>
						  
						  </s:iterator>
						  
			               
			              </tbody>
			            </table>
  					</div>
  				</div>
  			</div>

		  </div>
		</div>
    </div>
    <link href="vendors/datatables/dataTables.bootstrap.css" rel="stylesheet" media="screen">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>

    <script src="vendors/datatables/dataTables.bootstrap.js"></script>

    <script src="js/custom.js"></script>
    <script src="js/tables.js"></script>
  </body>
</html>