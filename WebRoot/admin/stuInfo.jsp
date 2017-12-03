<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'stu.jsp' starting page</title>
    <style type="text/css">
    td {
	    text-align: right;
	    max-width: 180px;
    }
    #img-box img {
    	max-width: 128px;
    	max-height: 128px;
    }
    .content textarea {
    	min-width:100%;
    	min-height:80px;
    	max-width:100%;
    	max-height:80px;
    }
    .content img {
    	height:80px;
    	margin: 2px;
    	border: 3px double;
    	background-color: #f3f3f3;
    }
    /* .info-box {min-height: 400px;} */
    .info-box-hide {display: none;}
    .info-box-show {display: block;}
    </style>
    <script src="js/jquery1.9.1.min.js" type="text/javascript"></script>
  	<script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	var current = null;
    	$('.dropdown').on('show.bs.dropdown', function () {
    		current = $(this);
   		});
    	$('.dropdown-link').click(function(){
    		current.find('.dropdown-input').val($(this).text());
    	});
    	
    	$('#term1').attr("class","info-box-show");
    	/*$('#termChoice').click(function() {
    		$('.info-box').height($('.info-box').height());
    		$('.info-box-show').attr("class","info-box-hide");
    		$('#term'+$(this).val()).attr("class","info-box-show");
    	}); */
    });
    function showInfoBox(term) {
    	$('.termBtn').css("color","black");
    	$('#termBtn'+term).css({"color":"blue"});
    	$('.info-box').height($('.info-box').height());
		$('.info-box-show').attr("class","info-box-hide");
		$('#term'+term).attr("class","info-box-show");
    }
    </script>
    
  </head>
  
  <body>
  <%@include file="header.jsp" %>
  
  <div class="page-content"><div class="row"></div> 
		  <div class="col-md-2">
			<div class="sidebar content-box" style="display: block;">
			     <ul class="nav">
			         <!-- Main menu -->
			         <li class="current"><a href="AdminAction!loadAdminPage"><i class="glyphicon glyphicon-home"></i>管理首页</a></li>
			         <!-- <li><a href="calendar.html"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li> -->
			         <!-- <li ><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-list"></i> 学生党员列表 </a></li>-->
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
					<div class="panel-title">${stu.name}的信息</div>
				</div>
  				<div class="panel-body">
  					 <div class="content">
						  <form id="msform" action="AdminAction!updateStuInfo?stu.stuId=${stu.stuId}" method="post">
						  <div class="form-group row">
							  <div class="col-sm-4">
							  	学号<input class="form-control" name="stu.stuId" value="${stu.stuId}" />
							  	姓名<input class="form-control" name="stu.name" value="${stu.name}" />
							  	性别<input class="form-control" name="stu.sex" value="${stu.sex}" />
							  	民族<input class="form-control" name="stu.minzu" value="${stu.minzu}" />
							  	籍贯<input class="form-control" name="stu.jiguan" value="${stu.jiguan}" />
							  	出生日期<input class="form-control" name="stu.chushentime" value="${stu.chushentime}" />
							  	在读学历<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
							  	培养人<input class="form-control" name="stu.peiyangren" value="${stu.peiyangren}" />
		  					  </div>
							  
							  <div class="col-sm-4">
							  	班级<input class="form-control" name="stu.banji" value="${stu.banji}" />
							  	家庭住址<input class="form-control" name="stu.jiatinzhuzhi" value="${stu.jiatinzhuzhi}" />
								联系电话<input class="form-control" name="stu.lianxidianhua" value="${stu.lianxidianhua}" />
							  	提交入党申请时间<input class="form-control" name="stu.tijiaorudanshenqintime" value="${stu.tijiaorudanshenqintime}" />
							  	党员状态<%-- <input class="form-control" name="stu.state" value="${stu.state}" /> --%>
							  	<div class="dropdown">
									<input class="form-control dropdown-input" name="stu.state"  data-toggle="dropdown" value="${stu.state}" />
									<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										<s:iterator value="#request.states" id="item">
											<li role="presentation">
												<a class="dropdown-link" role="menuitem" tabindex="-1" href="#" ><s:property value="#item"/></a>
											</li>
											<!-- <li role="presentation" class="divider"></li> -->
										</s:iterator>
									</ul>
								</div>
							  	列为入党积极份子时间<input class="form-control" name="stu.lieweirudanjijifenzitime" value="${stu.lieweirudanjijifenzitime}" />
								列为预备党员时间<input class="form-control" name="stu.liewweiyubeidantime" value="${stu.liewweiyubeidantime}" />
							  </div>
							  
							  <div class="col-sm-4">
							  	转正时间<input class="form-control" name="stu.zhuangzhentime" value="${stu.zhuangzhentime}" />
								入党介绍人<input class="form-control" name="stu.rudanjieshaoren" value="${stu.rudanjieshaoren}" />
								发展党支部书记<input class="form-control" name="stu.fazhandanzhibushuji" value="${stu.fazhandanzhibushuji}" />
							  	党支部书记<input class="form-control" name="stu.danzhibushuji" value="${stu.danzhibushuji}" />
								所属党支部<input class="form-control" name="stu.suoshudanzhibu" value="${stu.suoshudanzhibu}" />
								毕业党籍调拨<input class="form-control" name="stu.biyedanjidiaobo" value="${stu.biyedanjidiaobo}" />
							  	备注<input class="form-control" name="stu.beizhu" value="${stu.beizhu}" />
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
		  <style>
		  .panel-body th{text-align: center;max-width: 60px;}
		  .panel-body td{text-align: center;max-width: 60px;overflow: hidden;}
		  </style>
		  <div class="col-md-10 col-md-offset-2">
		   <div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">${stu.name }的材料</div>
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
					                  <td><a href="imageviewer.jsp?imgs=${item.imgRef}">[查看]<%-- <img style="height:30px" src="<%=basePath%>uploads/${item.imgRef}" />--%></a></td>
					                  <td>${item.banji}</td>
					                  <td class='item-type'>${item.type}</td>
					                  <td><a href="javascript:void(0)" onclick="javascript:dialog('${item.content}')" data-toggle="modal" data-target="#myModal">${item.content}</a></td>
					                  <td>${item.time}</td>
					                  <td id='rem'>${item.rem}</td>
					                  <td>
					                  	<a id='btn_pass' href="javascript:pass('${item.materialId}','${item.tmpType}')" class="btn btn-default">通过</a>
					                  	<a id='btn_reject' href="javascript:reject('${item.materialId}','${item.tmpType}')" class="btn btn-default">驳回</a>
					                  </td>
				                 </tr>
							</s:iterator>
						</tbody>
					</table>
  				</div>
  			</div>
		<!-- honor -->
		  <div class="col-md-10">
  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">${stu.name}的奖惩情况
					<%-- <select id="termChoice">
						<option value="1" selected="selected">第1学期</option>
						<option value="2">第2学期</option>
						<option value="3">第3学期</option>
						<option value="4">第4学期</option>
						<option value="5">第5学期</option>
						<option value="6">第6学期</option>
						<option value="7">第7学期</option>
						<option value="8">第8学期</option>
					</select> --%>
						<button id="termBtn1" class="termBtn btn btn-default" onclick="javascript:showInfoBox(1)">第1学期</button>
						<button id="termBtn2" class="termBtn btn btn-default" onclick="javascript:showInfoBox(2)">第2学期</button>
						<button id="termBtn3" class="termBtn btn btn-default" onclick="javascript:showInfoBox(3)">第3学期</button>
						<button id="termBtn4" class="termBtn btn btn-default" onclick="javascript:showInfoBox(4)">第4学期</button>
						<button id="termBtn5" class="termBtn btn btn-default" onclick="javascript:showInfoBox(5)">第5学期</button>
						<button id="termBtn6" class="termBtn btn btn-default" onclick="javascript:showInfoBox(6)">第6学期</button>
						<button id="termBtn7" class="termBtn btn btn-default" onclick="javascript:showInfoBox(7)">第7学期</button>
						<button id="termBtn8" class="termBtn btn btn-default" onclick="javascript:showInfoBox(8)">第8学期</button>
					</div>
				</div>
  				<div class="panel-body info-box">
  					 <div class="content">
  					 	<s:iterator id="honor" value="#request.honors" status="st">
  					 	<div id="term${honor.term}" class="info-box-hide">
  					 	<div style="text-align: right;margin-top: -60px"><a id="scanBtn" class="btn btn-info" href="imageviewer.jsp?imgs=${honor.img}">第${honor.term}学期材料图片</a>
  					 	</div>
  					 	<form id="msform" action="AdminAction!updateStuHonor?stu.stuId=${stu.stuId}&honor.term=${honor.term}" method="post">
							  <div class="form-group row">
								  <div class="col-sm-4">
			  					  	奖助学金情况<textarea class="form-control" name="honor.jiangzhuxuejin" >${honor.jiangzhuxuejin}</textarea>
			  					  	荣誉证书情况<textarea class="form-control" name="honor.ronyuzhenshu" >${honor.ronyuzhenshu}</textarea>
			  					  	所任干部情况<textarea class="form-control" name="honor.suorenganbu" >${honor.suorenganbu}</textarea>
			  					  </div>
								  
								  <div class="col-sm-4">
								  	参加活动情况<textarea class="form-control" name="honor.canjiahuodong" >${honor.canjiahuodong}</textarea>
			  					  	寝室差优情况<textarea class="form-control" name="honor.qinshichayou" >${honor.qinshichayou}</textarea>
								  	迟到早退情况<textarea class="form-control" name="honor.chidaozaotui" >${honor.chidaozaotui}</textarea>
								  </div>
								  
								  <div class="col-sm-4">
								  	旷课情况<textarea class="form-control" name="honor.kuanke" >${honor.kuanke}</textarea>
 									挂科情况<textarea class="form-control" name="honor.guake" >${honor.guake}</textarea>
								  	处份情况<textarea class="form-control" name="honor.chufen" >${honor.chufen}</textarea>
								  </div>
								  
							  </div>
							  <!--<div class="col-sm-4">
							  	<div class="img-box"><img src="images/facebook.png" ></div>
							  	<div class="img-box"><img src="images/登录.png" ></div>
							  	<div class="img-box"><img src="images/facebook.png" ></div>
							  </div>-->
							  <input class="form-control" style="width: 200px; margin-left: auto;margin-right: auto" type="submit" value="提交更改"/>
							  </form>
  					 	</div>
  					 	</s:iterator>
					</div>
  				</div>
  			</div>
		  </div>
    </div>
  
  </body>
  
  
  
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
    
  <script type="text/javascript" src="../js/dist/lrz.bundle.js?v=7687367"></script>
  <script type="text/javascript">
  /*var tds = document.getElementsByTagName("input");
  for(var i=0;i<tds.length;i++) {
  	tds[i].value = tds[i].name + Math.floor(Math.random() * 1000);
  }*/
	document.getElementById('file_input').addEventListener('change', function () {
		var that = this;
		if(that.value.indexOf(".gif")>0){
			alert('请上传静态图片');
			return;
		}
		lrz(that.files[0], {
		    width: 800,
		})
		.then(function (rst) {
		    var img = new Image();
		    img.height = 50;
		    var div = document.getElementById('img-box');
		    div.innerHTML = "";
		    div.appendChild(img);
		    img.src = rst.base64;

		    var input_img_base64 = document.getElementById('input_img_base64');
		    input_img_base64.value = rst.base64;
		    
		    return rst;
		});
	});
	</script>
</html>
