<%@ page language="java" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>MyJsp.jsp</title>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
    <style type="text/css">
    .img-box img{
    	width: 20%;
    }
    </style>
    <script type="text/javascript">
    function sbmt() {
    	var a = document.getElementById("content").value;
    	var b = document.getElementById("input-file").value;
    	if(a=='') {
    		alert('请输入内容');
    		return ;
    	}
    	if(b=='') {
    		alert('请选择照片');
    		return ;
    	}
    	document.getElementById('msform').submit();
    }
    </script>
  </head>
  
  <body>
  <%@include file="progressHeader.jsp" %>
  <div class="content">
  	  <div>${request.material.rem}</div>
	  <form id="msform" action="ProgressAction!submitApplicationBook" method="post" enctype="multipart/form-data">
	  	<div class="row col-sm-6">
			入党申请：
			<textarea id='content' class="form-control" name="material.content" rows="12" cols="60">${material.content}</textarea>
			入党申请书附件（入党申请书拍照）：
			<div class="img-box">
				<s:if test="#request.material!=null">
					<a href="<%=basePath%>uploads/${material.imgRef}">
					<img alt="" src="<%=basePath%>uploads/${material.imgRef}" ></a>
				</s:if>
			</div>
			<input id='input-file' class="form-control" type="file" name="img">
			<br>
			<s:if test="#request.material.passed==1">
				<input onclick="sbmt();return false;" class="form-control" style="color: green" type="button" value="审核通过" disabled="disabled" >
			</s:if>
			<s:elseif test="#request.material.passed==0">
				<input onclick="sbmt();return false;" class="form-control" style="color: orange" type="button" value="审核中..."  disabled="disabled">
			</s:elseif>
			<s:elseif test="#request.material.passed==-1">
				<input onclick="sbmt();return false;" id='sbmt-btn' class="form-control" type="button" value="重新提交">
			</s:elseif>
			<s:elseif test="#request.material==null">
				<s:if test="#request.stu.nextop==#request.type">
					<input onclick="sbmt();return false;" class="form-control" type="button" value="提交">
				</s:if>
				<s:else>
					<input onclick="sbmt();return false;" class="form-control" style="color: gray;" type="button" disabled="disabled" value="不可提交">
				</s:else>
			</s:elseif>
		</div>
	  </form>
	</div>
  </body>
</html>
