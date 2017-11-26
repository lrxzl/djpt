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
			          <li class="submenu open">
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
  				<div class="panel-heading">
					<div class="panel-title"><b>入党对象列表>>${type==null?"所有入党对象":type}</b></div>
				</div>
				<div style="text-align: right;">
					<!-- 按钮触发模态框 -->
					<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
						导出Excel
					</button>
				</div>
  				<div class="panel-body">
  					<style>
  						panel-body. td{word-wrap:break-word;word-break:break-all;max-width: 100px;max-height:auto;height:auto;overflow: scroll;}
  					</style>
  					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
						<thead>
							<tr>
								<th>学号</th>
								<th>姓名</th>
								<th>班级</th>
								<th>培养人</th>
								<th>状态</th>
								<th>注册时间</th>
								<th>所在党支部</th>
								<th>入党介绍人</th>
								<th>党支部书记</th>
								<th>毕业党籍调拨</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#request.stuList" id="item" status="st">
						  	<s:if test="#st.odd">
							  	<tr class="odd gradeX">
							</s:if>
							<s:else>
								<tr class="even gradeC">
							</s:else>
									<td class='item-id'><s:property value="#item.stuId"/></a></td>
									<td>
										<a href="AdminAction!loadStuInfo?stu.stuId=${item.stuId}">
								  		<s:property value="#item.name"/></a>
							  		</td>
									<td><s:property value="#item.banji"/></td>
									<td><s:property value="#item.peiyanren"/></td>
									<td class="center"><s:property value="#item.state"/></td>
									<td class="center"><s:property value="#item.time"/></td>
									<td class="center"><s:property value="#item.suoshudanzhibu"/></td>
									<td class="center"><s:property value="#item.rudanjieshaoren"/></td>
									<td class="center"><s:property value="#item.danzhibushuji"/></td>
									<td class="center"><s:property value="#item.biyedanjidiaobo"/></td>
									<td class="center"><a href="AdminAction!export?stu.stuId=${item.stuId}">导出Excel</a></td>
									<td class="center"><a href="AdminAction!deleteStu?stu.stuId=${item.stuId}">删除学生</a></td>
								</tr>
						  </s:iterator>
						</tbody>
					</table>
  				</div>
  			</div>

		  </div>
		</div>
    </div>
    
    <!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">
						导出下列字段
					</h4>
				</div>
				<div class="modal-body">
					<table>
					<tr>
						<td><input class="field-checkbox-all" type="checkbox">全选</td>
						<td><input class="field-checkbox-rev" type="checkbox">反选</td></tr>
					<tr> 
						<td><input class="field-checkbox" type="checkbox" value="stuId" >学号</td>
						<td><input class="field-checkbox" type="checkbox" value="name" >姓名</td>
						<td><input class="field-checkbox" type="checkbox" value="sex" >性别</td>
						<td><input class="field-checkbox" type="checkbox" value="state" >状态</td>
						<td><input class="field-checkbox" type="checkbox" value="minzu" >民族</td>
						
					</tr>
					<tr>
						<td><input class="field-checkbox" type="checkbox" value="banji" >班级</td>
						<td><input class="field-checkbox" type="checkbox" value="jiguan" >籍贯</td>
						<td><input class="field-checkbox" type="checkbox" value="chushentime" >出生日期</td>
						<td><input class="field-checkbox" type="checkbox" value="tijiaorudanshenqintime" >提交入党申请时间</td>
						<td><input class="field-checkbox" type="checkbox" value="lieweirudanjijifenzitime" >列为入党积极份子时间</td>
					</tr>
					<tr>
						<td><input class="field-checkbox" type="checkbox" value="lieweiyubeidanyuantime" >列为预备党员时间</td>
						<td><input class="field-checkbox" type="checkbox" value="zhuanzhentime" >转正时间</td>
						<td><input class="field-checkbox" type="checkbox" value="fazhandanzhibushuji" >发展党支部书记</td>
						<td><input class="field-checkbox" type="checkbox" value="danzhibushuji" >党支部书记</td>
					</tr>
					<tr>
						<td><input class="field-checkbox" type="checkbox" value="suoshudanzhibu" >所属党支部</td>
						<td><input class="field-checkbox" type="checkbox" value="jiatinzhuzhi" >家庭住址</td>
						<td><input class="field-checkbox" type="checkbox" value="lianxidianhua" >联系电话</td>
						<td><input class="field-checkbox" type="checkbox" value="biyedanjidiaobo" >毕业党籍调拨</td>
						<td><input class="field-checkbox" type="checkbox" value="beizhu" >备注</td>
					</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
					<button id='exportBtn' type="button" class="btn btn-primary">
						导出Excel
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<script type="text/javascript" src="js/jquery1.9.1.min.js"></script>
	<script>
	$(function () {
		$('.field-checkbox').prop('checked',true);
		$('.field-checkbox-all').prop('checked',true);
		
		$('.field-checkbox-all').click(function() {
			$('.field-checkbox').prop('checked',$(this).prop('checked'));
		});
		
		$('.field-checkbox-rev').click(function() {
			$('.field-checkbox').each(function() {
				$(this).prop('checked',!$(this).prop('checked'));
			});
		});
		
		$('#exportBtn').click(function() {
			var fields = "";
			var ids = "";
			$('.field-checkbox').each(function() {
				if($(this).prop('checked')) {
					fields += $(this).val() + " ";
				}
			});
			$('.item-id').each(function(){
				ids += $(this).text() + " ";
			});
			location.href = "AdminAction!exportAll?fields="+escape(fields)+"&ids="+escape(ids);
			//alert("AdminAction!exportAll?fields="+escape(fields)+"&ids="+escape(ids))
			//alert(fields);
			//alert(ids);
		});
		
	});
	
	</script>
    
    
    
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