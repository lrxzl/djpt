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
			         
			         <li class="submenu current open">
			              <a href="#">
			                 <i class="glyphicon glyphicon-list"></i> 审核
			                 <span class="caret pull-right"></span>
			              </a>
			              <!-- Sub menu -->
		                  <ul class="open">
		                      <li><a href="AdminAction!loadUnderReviews">待审核</a></li>
		                      <li><a href="AdminAction!loadPassedReviews">已通过</a></li>
		                      <li class="current"><a href="AdminAction!loadRejectReviews">被驳回</a></li>
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
			<style>
			.panel-body th{text-align: center;max-width: 60px;}
			.panel-body td{text-align: center;max-width: 60px;overflow: hidden;}
			</style>
		   <div class="col-md-10">
		   <div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Bootstrap dataTables</div>
				</div>
  				<div class="panel-body">
  					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
						<thead>
							<tr>
			                  <th>#</th>
			                  <th>姓名</th>
			                  <th>材料照片</th>
			                  <th>班级</th>
			                  <th>材料类型</th>
			                  <th>内容</th>
			                  <th>提交时间</th>
			                  <th>备注</th>
			                  <th>审核</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator id="item" value="#request.materials" status="st">
								<s:if test="#st.even">
									<tr id='${item.materialId}' class="even gradeX">
								</s:if>
								<s:else>
									<tr id='${item.materialId}' class="odd gradeX">
								</s:else>
					              	  <td>${item.materialId}</td>
					                  <td><a href="AdminAction!loadStuInfo?stu.stuId=${item.userId}">${item.userName}</a></td>
					                  <td><a href="<%=basePath%>uploads/${item.imgRef}">[查看]<%-- <img style="height:30px" src="<%=basePath%>uploads/${item.imgRef}" />--%></a></td>
					                  <td>${item.banji}</td>
					                  <td class='item-type'>${item.type}</td>
					                  <td><a href="javascript:void(0)" onclick="javascript:dialog('${item.content}')" data-toggle="modal" data-target="#myModal">${item.content}</a></td>
					                  <td>${item.time}</td>
					                  <td id='rem'>${item.rem}</td>
					                  <td>
					                  	<a id='btn_pass' href="javascript:pass('${item.materialId}','${item.type}')" class="btn btn-default">通过</a>
					                  	<a id='btn_reject' href="javascript:reject('${item.materialId}','${item.type}')" class="btn btn-default">驳回</a>
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
    
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						内容
					</h4>
				</div>
				<div class="modal-body">
					<div id='dialogContent'></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<!-- <button type="button" class="btn btn-primary">
						提交更改
					</button> -->
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
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
    	//initAdminJs();
    	
    	function dialog(str) {
    		$('#dialogContent').text(str);
    	}
    	$('.pmst_box').click(function() {
    		var _this = $(this);
    		var form = crtSeriz(['admin.admin_id'],[_this.attr('id')]);
    		var method = $(this).attr('method');
    		ajaxPost("AjaxAction!"+method, form, function(rst) {
    			
    		});
    	});
    	
    	function reject(id, type) {
      		var item = $('#'+id);
      		var rem = item.find('#rem');
      		var reason = prompt('驳回原因');
      		if(reason != null) {
      			var form = crtSeriz
      			(["material.materialId","material.rem","material.type"]
      			,[id,reason,type]);
      			var method = "reject";
      			ajaxPost("AjaxAction!"+method, form, function(rst) {
      				json = eval('(' + rst + ')');
      				if("success"==json['result']) {
	      				rem.text(reason);
	    	      		$(item).find('#btn_reject').text('已驳回');
	    	      		$(item).find('#btn_reject').attr('disabled','disabled');
	    	      		$(item).find('#btn_pass').attr('disabled','disabled');
      				} else {
      					alert(json['result']);
      				}
        		});
      		}
      	}
    	
    	function pass(id, type) {
      		var item = $('#'+id);
      		var rem = item.find('#rem');
      		if(confirm("确认通过？")) {
      			var form = crtSeriz(["material.materialId","material.type"],[id,type]);
      			var method = "pass";
      			ajaxPost("AjaxAction!"+method, form, function(rst) {
      				json = eval('(' + rst + ')');
      				if("success"==json['result']) {
	      				rem.text("已通过");
	    	      		$(item).find('#btn_reject').text('已通过');
      					$(item).find('#btn_reject').attr('disabled','disabled');
	    	      		$(item).find('#btn_pass').attr('disabled','disabled');
      				} else {
      					alert(json['result']);
      				}
        		});
      		}
      	}
    </script>
  </body>
</html>

