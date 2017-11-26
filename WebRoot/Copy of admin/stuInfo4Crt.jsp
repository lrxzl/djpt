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
    td{
	    text-align: right;
	    max-width: 180px;
    }
    </style>
    
  </head>
  
  <body>
  <%@include file="header.jsp" %>
  <form action="StudentAction!saveStu" method="post">
	  <table>
		  <tr>
		  	<td>学号：</td>
		  	<td><input type="text" name="stu.stu_id" value="${stu.stu_id}" /></td>
		  	<td>姓名：</td>
		  	<td><input type="text" name="stu.name" value="${stu.name}" /></td>
		  	<td>头像：</td>
		  	<td><input type="text" name="stu.head_img" value="${stu.head_img}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>身份：</td>
		  	<td><input type="text" name="stu.identity" value="${stu.identity}" /></td>
		  	<td>身份证：</td>
		  	<td><input type="text" name="stu.identification" value="${stu.identification}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>出生日期：</td>
		  	<td><input type="text" name="stu.birth" value="${stu.birth}" /></td>
		  	<td>性别：</td>
		  	<td><input type="text" name="stu.sex" value="${stu.sex}" /></td>
		  	<td>出生地：</td>
		  	<td><input type="text" name="stu.birth_place" value="${stu.birth_place}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>民族：</td>
		  	<td><input type="text" name="stu.nation" value="${stu.nation}" /></td>
		  	<td>籍贯：</td>
		  	<td><input type="text" name="stu.province" value="${stu.province}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>学历：</td>
		  	<td><input type="text" name="stu.qualification" value="${stu.qualification}" /></td>
		  	<td>毕业学校：</td>
		  	<td><input type="text" name="stu.graduate_school" value="${stu.graduate_school}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>电话：</td>
		  	<td><input type="text" name="stu.phone" value="${stu.phone}" /></td>
		  	<td>email：</td>
		  	<td><input type="text" name="stu.email" value="${stu.email}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>户口所在地：</td>
		  	<td><input type="text" name="stu.registered_residence_address" value="${stu.registered_residence_address}" /></td>
		  	<td>当前居住地址：</td>
		  	<td><input type="text" name="stu.living_address" value="${stu.living_address}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>加入的党支部：</td>
		  	<td><input type="text" name="stu.joined_party_branches" value="${stu.joined_party_branches}" /></td>
		  	<td>单位地址：</td>
		  	<td><input type="text" name="stu.unit_address" value="${stu.unit_address}" /></td>
		  	<td>单位性质：</td>
		  	<td><input type="text" name="stu.unit_property" value="${stu.unit_property}" /></td>
		  </tr> 
		  
		  <tr>
		  	<td>培养人：</td>
		  	<td><input type="text" name="stu.trainner" value="${stu.trainner}" /></td>
		  	<td>入党介绍人：</td>
		  	<td><input type="text" name="stu.introducer" value="${stu.introducer}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>列入预备党员时间：</td>
		  	<td><input type="text" name="stu.prepared_time" value="${stu.prepared_time}" /></td>
		  	<td>转正时间：</td>
		  	<td><input type="text" name="stu.tobe_regular_time" value="${stu.tobe_regular_time}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>状态：</td>
		  	<td><input type="text" name="stu.state" value="${stu.state}" /></td>
		  	<td>学历：</td>
		  	<td><input type="text" name="stu.qualification" value="${stu.qualification}" /></td>
		  </tr>
		  
		  <tr>
		  	<td>党支部书记：</td>
		  	<td><input type="text" name="stu.party_branch_secretary" value="${stu.party_branch_secretary}" /></td>
		  	<td>毕业党籍调拨：</td>
		  	<td><input type="text" name="stu.party_membership_transfer" value="${stu.party_membership_transfer}" /></td>
		  </tr>
		  <tr>
		  	<td>其他：</td>
		  	<td><input type="text" name="stu.others" value="${stu.others}" /></td>
		  </tr>
	  </table>
	  <input type="submit" name="提交" value="提交"/>
  </form>
  </body>
  <script type="text/javascript">
    var tds = document.getElementsByTagName("input");
    for(var i=0;i<tds.length;i++) {
    	tds[i].value = tds[i].name + Math.floor(Math.random() * 1000);
    } 
    </script>
</html>
