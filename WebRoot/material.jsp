<%@ page language="java" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>MyJsp.jsp</title>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fileUp.css"> 
    <style type="text/css">
    #img-box img {
    	width: 110px;
    }
    #title {
    	font-size: 20px;
    }
    .hidding {
    	display: none;
    }
    .rem{
    	color: orange;
    }
    div{padding: 3px;}
    .content{padding: 8px;}
    </style>
    <script type="text/javascript">
    function sbmt() {
    	/* var a = document.getElementById("content").value;
    	var b = document.getElementById("input-file").value; */
    	//alert(document.getElementById("input-file").getAttribute("style").indexof(""));
    	/* if(a=='') {
    		alert('请输入内容');
    		return ;
    	}
    	if(b=='') {
    		alert('请选择照片');
    		return ;
    	} */
    	document.getElementById('msform').submit();
    }
    </script>
  </head>
  
  <body>
  <%@include file="progressHeader.jsp" %>
  <div class="content" >
  	  <center><div id="title">标题</div></center>
	  <div id="description">${request.type }</div>
	  <div class='rem'>${request.material.rem}</div>
	  <form id="msform" action="ProgressAction!submitMaterial?type=<%=request.getParameter("type")%>" method="post" enctype="multipart/form-data">
	  	<div class="row col-sm-6">
			<textarea id='content' class="form-control hidding" name="material.content" rows="12" cols="60">${material.content}</textarea>
			<div id="img-box" class='hidding'>
				材料照片：
				<s:if test="#request.material!=null">
					<a href="admin/imageviewer.jsp?imgs=${material.imgRef}"
					>[查看我提交的照片]</a>
					<%-- <a href="<%=basePath%>uploads/${material.imgRef}">
					<img src="<%=basePath%>uploads/${material.imgRef}" ></a> --%>
				</s:if>
				<div style="width:250px">
					<!-- 隐藏input_图片隐藏 -->
      				<div class="all">
      					<div class="img-cont" id="img_cont1">
      						<a href="javascript:void(0);" class="file" id="file1">选择文件
      							<input type="file" onchange='PreviewImage(this)' value="图片" name="img0" id="tp1"/>
	    					</a>
	    				</div>
	   				</div>
					<!-- <input id='input-file' style="display: none" class="form-control" type="file" name="img"> -->
				</div>
			</div>
			<br>
			<div id='submit-btn' class="hidding">
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
					<%-- <s:if test="#request.stu.nextop==#request.type">
						<input onclick="sbmt();return false;" class="form-control" type="button" value="提交">
					</s:if>
					<s:else>
						<input onclick="sbmt();return false;" class="form-control" style="color: gray;" type="button" disabled="disabled" value="不可提交">
					</s:else> --%>
					<input onclick="sbmt();return false;" class="form-control" type="button" value="提交">
				</s:elseif>
			</div>
		</div>
	  </form>
	</div>
	 <!-- js -->
  	<script  src="js/jquery-1.11.3.min.js"></script>
  	<script  src="js/fileUp.js"></script>
	<script type="text/javascript">
	var m_en = ["material_application","material_dankejieyezhenshu","material_handiaozhenmin"
	            ,"material_tuanyuanrudantuijianbiao","material_zizhuan","material_report1","material_report2"
	            ,"material_report3","material_report4","material_rudanzhiyuanshu","material_danyuanpinyi1"
	    		,"material_danyuanpinyi2","material_danyuanpinyi3"
	    		,"material_feidanyuanpinyi1","material_feidanyuanpinyi2","material_feidanyuanpinyi3","material_feidanyuanpinyi4","material_feidanyuanpinyi5"
	    		,"material_rudanxuanshi","material_zhuanzhenshenqin"];
	var m_cn = ["入党申请书","党课结业证书","函调证明"
	    		,"团员入党推荐表图片","自传图片","3月份思想汇报","6月份思想汇报"
	    		,"9月份思想汇报","12月份思想汇报","入党志愿书","党员评议1"
	    		,"党员评议2","党员评议3"
	    		,"非党员评议1","非党员评议2","非党员评议3","非党员评议4","非党员评议5"
	    		,"入党宣誓","转正申请"];
	var m_desc = ["<ol><li>入党申请书</li></ol>","党课结业证书","函调证明"
		    		,"团员入党推荐表图片","自传图片","3月份思想汇报","6月份思想汇报"
		    		,"请在九月份之前提交九月份思想汇报","12月份思想汇报","入党志愿书","党员评议1"
		    		,"党员评议2","党员评议3"
		    		,"非党员评议1","非党员评议2","非党员评议3","非党员评议4","非党员评议5"
		    		,"入党宣誓","转正申请"];
	var aquire_none = 0;
	var aquire_text = 1;
	var aquire_img  = 2;
	var aquire_both = 3;
	var m_aqu = [aquire_both,aquire_img,aquire_img
	     		,aquire_img,aquire_img,aquire_both,aquire_both
	    		,aquire_both,aquire_both,aquire_both,aquire_img
	    		,aquire_img,aquire_img
	    		,aquire_img,aquire_img,aquire_img,aquire_img,aquire_img
	    		,aquire_none,aquire_both];
	
	var type = '<%=request.getParameter("type")%>';
	if(type=='null'||type=='');
	var title_div = document.getElementById('title');
	var desc_div = document.getElementById('description');
	var submit_btn = document.getElementById('submit-btn');
	
	var img_box = document.getElementById('img-box');
	var content_box = document.getElementById('content');
	
	for(var i=0;i<m_en.length;i++) {
		if(m_en[i] == "material_"+type) {
			/*
			var desc_li = m_cn[i].split(";").length;
			for(var j=0;j<desc_li.length;j++) {
				
			}
			*/
			title_div.innerHTML = m_cn[i];
			desc_div.innerHTML = m_desc[i];
			if(m_aqu[i]==aquire_none) {
				break;
			}
			submit_btn.style.display = "block";
			if(m_aqu[i]==aquire_both) {
				img_box.style.display = "block";
				content_box.style.display = "block";
				break;
			}
			if(m_aqu[i]==aquire_text) {
				content_box.style.display = "block";
				break;
			}
			if(m_aqu[i]==aquire_img) {
				img_box.style.display = "block";
				break;
			}
		}
	}
	
	</script>
  </body>
</html>
