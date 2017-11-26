<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'stuList.jsp' starting page</title>
  </head>
  
  <body>
  <%@include file="header.jsp" %>
 <%--  <s:action name="StudentAction!loadStuList" namespace="/admin"></s:action> --%>
  
  <s:iterator value="#request.stuList" id="item">
  	<div><a href="AdminAction!loadStuInfo?stu.stu_id=${item.stu_id}">
  	<s:property value="#item.name"/></a></div>
  </s:iterator>
  
  <div class="page-content">
			<div class="row">
				<div class="col-md-2">
				  	<div class="sidebar content-box" style="display: block;">
		                <ul class="nav">
		                    <!-- Main menu -->
		                    <li class="current"><a href="../index.jsp"><i class="glyphicon glyphicon-home"></i> 后台管理首页</a></li>
		                    <li><a href="NewsAction!loadNewsList"><i class="glyphicon glyphicon-calendar"></i> 新闻管理</a></li>
		                    <li><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-stats"></i> 学生党员</a></li>
		                    <!-- <li><a href="tables.html"><i class="glyphicon glyphicon-list"></i> 【留空】 </a></li>
		                    <li><a href="buttons.html"><i class="glyphicon glyphicon-record"></i> 【留空】 </a></li>
		                    <li><a href="editors.html"><i class="glyphicon glyphicon-pencil"></i> 【留空】  </a></li>
		                    <li><a href="forms.html"><i class="glyphicon glyphicon-tasks"></i> 【留空】 </a></li> -->
		                    <li class="submenu">
		                         <a href="#">
		                            <i class="glyphicon glyphicon-list"></i>【留空】 
		                            <span class="caret pull-right"></span>
		                         </a>
		                         <!-- Sub menu -->
		                         <ul>
		                            <li><a href="login.html">【留空】 </a></li>
		                            <li><a href="signup.html">【留空】</a></li>
		                        </ul>
		                    </li>
		                </ul>
		             </div>
				  </div>

			</div>
		</div>
		
  <div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">Bootstrap dataTables</div>
	</div>
			<div class="panel-body">
				<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
			<thead>
				<tr>
					<th>Rendering engine</th>
					<th>Browser</th>
					<th>Platform(s)</th>
					<th>Engine version</th>
					<th>CSS grade</th>
				</tr>
			</thead>
			<tbody>
				<tr class="odd gradeX">
					<td>Trident</td>
					<td>Internet
						 Explorer 4.0</td>
					<td>Win 95+</td>
					<td class="center"> 4</td>
					<td class="center">X</td>
				</tr>
				<tr class="even gradeC">
					<td>Trident</td>
					<td>Internet
						 Explorer 5.0</td>
					<td>Win 95+</td>
					<td class="center">5</td>
					<td class="center">C</td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet
						 Explorer 5.5</td>
					<td>Win 95+</td>
					<td class="center">5.5</td>
					<td class="center">A</td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>Internet
						 Explorer 6</td>
					<td>Win 98+</td>
					<td class="center">6</td>
					<td class="center">A</td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet Explorer 7</td>
					<td>Win XP SP2+</td>
					<td class="center">7</td>
					<td class="center">A</td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>AOL browser (AOL desktop)</td>
					<td>Win XP</td>
					<td class="center">6</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.7</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.5</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 2.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 3.0</td>
					<td>Win 2k+ / OSX.3+</td>
					<td class="center">1.9</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Camino 1.0</td>
					<td>OSX.2+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Camino 1.5</td>
					<td>OSX.3+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape 7.2</td>
					<td>Win 95+ / Mac OS 8.6-9.2</td>
					<td class="center">1.7</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape Browser 8</td>
					<td>Win 98SE+</td>
					<td class="center">1.7</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape Navigator 9</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.0</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.1</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.1</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.2</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.2</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.3</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.3</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.4</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.4</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.5</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.5</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.6</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">1.6</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.7</td>
					<td>Win 98+ / OSX.1+</td>
					<td class="center">1.7</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.8</td>
					<td>Win 98+ / OSX.1+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Seamonkey 1.1</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Epiphany 2.20</td>
					<td>Gnome</td>
					<td class="center">1.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 1.2</td>
					<td>OSX.3</td>
					<td class="center">125.5</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 1.3</td>
					<td>OSX.3</td>
					<td class="center">312.8</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 2.0</td>
					<td>OSX.4+</td>
					<td class="center">419.3</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 3.0</td>
					<td>OSX.4+</td>
					<td class="center">522.1</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>OmniWeb 5.5</td>
					<td>OSX.4+</td>
					<td class="center">420</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>iPod Touch / iPhone</td>
					<td>iPod</td>
					<td class="center">420.1</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>S60</td>
					<td>S60</td>
					<td class="center">413</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 7.0</td>
					<td>Win 95+ / OSX.1+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 7.5</td>
					<td>Win 95+ / OSX.2+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 8.0</td>
					<td>Win 95+ / OSX.2+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 8.5</td>
					<td>Win 95+ / OSX.2+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.0</td>
					<td>Win 95+ / OSX.3+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.2</td>
					<td>Win 88+ / OSX.3+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.5</td>
					<td>Win 88+ / OSX.3+</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera for Wii</td>
					<td>Wii</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Nokia N800</td>
					<td>N800</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Nintendo DS browser</td>
					<td>Nintendo DS</td>
					<td class="center">8.5</td>
					<td class="center">C/A<sup>1</sup></td>
				</tr>
				<tr class="gradeC">
					<td>KHTML</td>
					<td>Konqureror 3.1</td>
					<td>KDE 3.1</td>
					<td class="center">3.1</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeA">
					<td>KHTML</td>
					<td>Konqureror 3.3</td>
					<td>KDE 3.3</td>
					<td class="center">3.3</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeA">
					<td>KHTML</td>
					<td>Konqureror 3.5</td>
					<td>KDE 3.5</td>
					<td class="center">3.5</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeX">
					<td>Tasman</td>
					<td>Internet Explorer 4.5</td>
					<td>Mac OS 8-9</td>
					<td class="center">-</td>
					<td class="center">X</td>
				</tr>
				<tr class="gradeC">
					<td>Tasman</td>
					<td>Internet Explorer 5.1</td>
					<td>Mac OS 7.6-9</td>
					<td class="center">1</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeC">
					<td>Tasman</td>
					<td>Internet Explorer 5.2</td>
					<td>Mac OS 8-X</td>
					<td class="center">1</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeA">
					<td>Misc</td>
					<td>NetFront 3.1</td>
					<td>Embedded devices</td>
					<td class="center">-</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeA">
					<td>Misc</td>
					<td>NetFront 3.4</td>
					<td>Embedded devices</td>
					<td class="center">-</td>
					<td class="center">A</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Dillo 0.8</td>
					<td>Embedded devices</td>
					<td class="center">-</td>
					<td class="center">X</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Links</td>
					<td>Text only</td>
					<td class="center">-</td>
					<td class="center">X</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Lynx</td>
					<td>Text only</td>
					<td class="center">-</td>
					<td class="center">X</td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>IE Mobile</td>
					<td>Windows Mobile 6</td>
					<td class="center">-</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>PSP browser</td>
					<td>PSP</td>
					<td class="center">-</td>
					<td class="center">C</td>
				</tr>
				<tr class="gradeU">
					<td>Other browsers</td>
					<td>All others</td>
					<td>-</td>
					<td class="center">-</td>
					<td class="center">U</td>
				</tr>
			</tbody>
		</table>
			</div>
		</div>
  </body>
</html>
