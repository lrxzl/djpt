<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%!int current = 1; %>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<div class="col-md-2">
<div class="sidebar content-box" style="display: block;">
     <ul class="nav">
         <!-- Main menu -->
         <li ><a href="AdminAction!loadAdminPage"><i class="glyphicon glyphicon-home"></i>管理首页</a></li>
         <!-- <li><a href="calendar.html"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li> -->
         <li ><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-list"></i> 学生党员列表 </a></li>
         <li ><a href="NewsAction!loadNewsList"><i class="glyphicon glyphicon-stats"></i> 新闻管理</a></li>
         <li ><a href="header_chart.jsp"><i class="glyphicon glyphicon-stats"></i> 统计</a></li>
         <!-- <li><a href="buttons.html"><i class="glyphicon glyphicon-record"></i> Buttons</a></li>
         <li><a href="editors.html"><i class="glyphicon glyphicon-pencil"></i> Editors</a></li>
         <li><a href="forms.html"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li> -->
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
 </body>
 </html>