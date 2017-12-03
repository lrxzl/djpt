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
			         <li class="current"><a href="AdminAction!loadAdminPage"><i class="glyphicon glyphicon-home"></i>管理首页</a></li>
			         <!-- <li><a href="calendar.html"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li> -->
			         <!-- <li ><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-list"></i> 学生党员列表 </a></li>
			          -->
			          <li class="submenu">
			         	<a href="#">
			                 <i class="glyphicon glyphicon-list"></i>支部或小组
			                 <span class="caret pull-right"></span>
			              </a>
		                  <ul>
		                  	  <li><a href="#">学生党支部</a></li>
		                      <li><a href="#">教工党支部</a></li>
		                      <li><a href="#">软件工程党小组</a></li>
		                      <li><a href="#">软件技术党小组</a></li>
		                  </ul>
			         </li>
			         <li class="submenu">
			         	<a href="#">
			                 <i class="glyphicon glyphicon-list"></i>学生党员列表 
			                 <span class="caret pull-right"></span>
			              </a>
		                  <ul>
		                  	  <li><a href="AdminAction!loadStuList">所有入党对象</a></li>
		                      <li><a href="AdminAction!loadStuList?type=入党积极份子">入党积极份子</a></li>
		                      <li><a href="AdminAction!loadStuList?type=预备党员">预备党员</a></li>
		                      <li><a href="AdminAction!loadStuList?type=正式党员">正式党员</a></li>
		                  </ul>
			         </li>
			         <li><a href="teacherList.jsp"><i class="glyphicon glyphicon-list"></i>教工党员列表</a></li>
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
			          <li ><a href="NewsAction!loadNewsList"><i class="glyphicon glyphicon-stats"></i> 新闻管理</a></li>
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
  						<div style="text-align: right;margin-right:10%;"><a href="adminAdd.jsp">添加管理员</a></div>
		  				<div class="panel-heading">
							<div class="panel-title"></div>
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<span id="result"></span>
		  					<table class="table table-striped">
				              <thead>
				                <tr>
				                  <th>#</th>
				                  <th>管理员ID</th>
				                  <th>姓 名</th>
				                  <th>管理员类型</th>
				                  <th>编辑新闻</th>
				                  <th>修改发展党员信息</th>
				                  <th>查看/导出党员信息</th>
				                  <th>审核材料</th>
				                </tr>
				              </thead>
				              <tbody>
				              <s:iterator id="item" value="#request.adminList">
				                <tr>
				                  <td>1</td>
				                  <td><s:property value="#item.admin_id"/></td>
				                  <td><s:property value="#item.name"/></td>
				                  <td><s:property value="#item.type"/></td> 
				                  <s:if test="#session.admin_session.isMaxAdmin && #item.admin_id!=#session.admin_session.admin_id">
					                  <td><input id="${item.admin_id}" method="reverseNewsEdit" class="pmst_box" type="checkbox" <s:if test="#item.canEditNews()">checked="checked"</s:if>></td>
					                  <td><input id="${item.admin_id}" method="reverseStuInfosEdit" class="pmst_box" type="checkbox" <s:if test="#item.canEditStuInfos()">checked="checked"</s:if>></td>
					                  <td><input id="${item.admin_id}" method="reverseStuInfosScan" class="pmst_box" type="checkbox" <s:if test="#item.canScanStuInfos()">checked="checked"</s:if>></td>
				                  	  <td><input id="${item.admin_id}" method="reverseReview" class="pmst_box" type="checkbox" <s:if test="#item.canReviewMaterials()">checked="checked"</s:if>></td>
				                  	  <td><a href="AdminAction!deleteAdmin?admin.admin_id=${item.admin_id}">删除</a></td>
				                  </s:if>
				                  <s:else>
				                  	  <td><input class="pmst_box" type="checkbox" disabled="disabled" <s:if test="#item.canEditNews()">checked="checked"</s:if>></td>
					                  <td><input class="pmst_box" type="checkbox" disabled="disabled" <s:if test="#item.canEditStuInfos()">checked="checked"</s:if>></td>
					                  <td><input class="pmst_box" type="checkbox" disabled="disabled" <s:if test="#item.canScanStuInfos()">checked="checked"</s:if>></td>
				                  	  <td><input class="pmst_box" type="checkbox" disabled="disabled" <s:if test="#item.reverseReview()">checked="checked"</s:if>></td>
				                  </s:else>
				                </tr>
				              </s:iterator>
				              
				              </tbody>
				            </table>
		  				</div>
		  			</div>
		  			
  				</div>
  				
  				
  				<div class="col-md-5">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"></div>
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<span id="result"></span>
		  					<div class="content">
		  					<form id="msform" action="AdminAction!updateStuInfo?stu.stuId=${stu.stuId}" method="post">
							  <div class="form-group row">
								  <div class="col-sm-4">
								  	姓名<input class="form-control" name="stu.name" value="${stu.name}" />
								  	性别<input class="form-control" name="stu.sex" value="${stu.sex}" />
								  	民族<input class="form-control" name="stu.minzu" value="${stu.minzu}" />
								  	籍贯<input class="form-control" name="stu.jiguan" value="${stu.jiguan}" />
								  	出生日期<input class="form-control" name="stu.chushentime" value="${stu.chushentime}" />
			  					  </div>
								  
								  <div class="col-sm-4">
								  	岗位类别<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	职称<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	第一学历<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	最高学历<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	学位<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
								  </div>
								  
								  <div class="col-sm-4">
								  	入党时间<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	联系电话<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	所属党支部<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	所在部门<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	年度评优考核情况<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
			  					  	备注<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
								  </div>
								  
							  </div>
							  
							  <div class="row">
								  <div class="form-group col-sm-4 col-sm-offset-4">
								  	<input class="form-control" type="submit" value="提交更改"/>
								  </div>
							  </div>
							  </form>
		  					</div>
		  				</div>
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
    <script type="text/javascript" src="js/admin.js"></script>
    <script>
    $(document).ready(function() {
    	//initAdminJs();
    	$('.pmst_box').click(function() {
    		var _this = $(this);
    		var form = crtSeriz(['admin.admin_id'],[_this.attr('id')]);
    		var method = $(this).attr('method');
    		ajaxPost("AjaxAction!"+method, form, function(rst) {
    			
    		});
    	});
    });
    </script>
  </body>
</html>

