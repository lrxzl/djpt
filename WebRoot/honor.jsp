<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>奖惩情况页面</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="js/laydate.js"></script>
<link rel="stylesheet" href="css/tb.css">
<script>
	$(document).ready(function() {
		$('.parent').click(function() {
			var _this = $(this);
			$('.parent').each(function() {
				if(_this != $(this))
					$('.parent').find(".sub").css("display", "none");
			});
			$(this).find('.sub').toggle(500);
		});
		
		$('#termSelecter').change(function() {
			location.href = "StudentAction!loadTermHonor?honor.term="+$(this).val();
		});
		
	});
	function doSubmitHonor() {
		$('#msform').submit();
	}
	
	<%-- var imgStr = '<%=request.getParameter("honor.img")%>';
	alert(imgStr);
	var imgs = imgStr.split(';');
	var container = document.getElementById('upload-container');
	for(var i=0;i<imgs.length;i++) {
		var img = document.createElement('img');
		img.src = <%=basePath%>"uploads/"+imgs[i];
		container.append(img);
	}; --%>
	
</script>
<style type="text/css">
#table textarea {
	min-width: 200px;
	min-height: 50px;
	max-width: 200px;
	max-height: 50px;
}
.img-container img{max-width: 80px;}
</style>
</head>
<body>
	<!-- 头部 -->
	<div class="main">
		<div class="main_top">
			<div class="line">
			</div>
		</div>
		<div class="table" align="center">
			<form id="msform" action="StudentAction!submitTermHonor" method="post">
				<table id="table">
					<tr>
						<td>学期:</td>
						<td>
							<select id="termSelecter" name="honor.term">
								<option value="1" <%if("1".equals(request.getParameter("honor.term"))){%>selected<%}%>>第1学期</option>
								<option value="2" <%if("2".equals(request.getParameter("honor.term"))){%>selected<%}%>>第2学期</option>
								<option value="3" <%if("3".equals(request.getParameter("honor.term"))){%>selected<%}%>>第3学期</option>
								<option value="4" <%if("4".equals(request.getParameter("honor.term"))){%>selected<%}%>>第4学期</option>
								<option value="5" <%if("5".equals(request.getParameter("honor.term"))){%>selected<%}%>>第5学期</option>
								<option value="6" <%if("6".equals(request.getParameter("honor.term"))){%>selected<%}%>>第6学期</option>
								<option value="7" <%if("7".equals(request.getParameter("honor.term"))){%>selected<%}%>>第7学期</option>
								<option value="8" <%if("8".equals(request.getParameter("honor.term"))){%>selected<%}%>>第8学期</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>荣获奖、助学金情况:</td>
						<td><textarea type="text" name="honor.jiangzhuxuejin" value="${request.honor.jiangzhuxuejin }" >${request.honor.jiangzhuxuejin }</textarea></td>
						<td>荣获荣誉证书情况:</td>
						<td><textarea type="text" name="honor.ronyuzhenshu" value="${request.honor.ronyuzhenshu }" >${request.honor.ronyuzhenshu }</textarea></td>
					</tr>
					<tr>
						<td>院系所任学生干部:</td>
						<td><textarea type="text" name="honor.suorenganbu" value="${request.honor.suorenganbu }" >${request.honor.suorenganbu }</textarea></td>
						<td>参加、组织活动情况:</td>
						<td><textarea type="text" name="honor.canjiahuodong" value="${request.honor.canjiahuodong }" >${request.honor.canjiahuodong }</textarea></td>
					</tr>
					<tr>
						<td>迟到旷课早退情况:</td>
						<td><textarea type="text" name="honor.chidaozaotui" value="${request.honor.chidaozaotui }" >${request.honor.chidaozaotui }</textarea></td>
						<td>挂科情况:</td>
						<td><textarea type="text" name="honor.guake" value="${request.honor.guake }" >${request.honor.guake }</textarea></td>
					</tr>
					<tr>
						<td>寝室好优情况:</td>
						<td><textarea type="text" name="honor.qinshichayou" value="${request.honor.qinshichayou }" >${request.honor.qinshichayou }</textarea></td>
						<td>处分情况:</td>
						<td><textarea type="text" name="honor.chufen" value="${request.honor.chufen }" >${request.honor.chufen }</textarea></td>
					</tr>
					<!-- <tr>
						<td align="center" colspan="6">
							
						</td>
					</tr> -->
				</table>
				
				<s:if test="#request.honor==null">
				<h3>请选择上述相应的图片附件：</h3>
				</s:if>
				<s:else>
				
				<div class="img-container">
					已提交的图片：
					<s:iterator value="#request.honor.img.split(';')" var="item">
						<img src="<%=basePath%>/uploads/<s:property value="#item"/>">
					</s:iterator>
				</div>
				
				<h3>若需要更改信息，请重新选择图片附件：</h3>
				</s:else>
				<div id="upload-container">
			        <input id="file_input" accept="image/gif,image/jpeg,image/png,image/*" type="file"/>
			        <div id="file_input_div"></div>
			    </div>
			    <div>
			    	<button type="button" onclick="doSubmitHonor()" class="btn btn-danger btn-lg active" id="button" >提交</button>
			    </div>
			</form>
		</div>
	</div>
</body>

<script src="js/dist/lrz.bundle.js?v=7687367"></script>
<script type="text/javascript">
var pic_ant = 0;
document.getElementById('file_input').addEventListener('change', function () {
	if(file_input_div.getElementsByTagName("img").length>8){
		alert('上传最多9张图片');
		return;
	}
	var that = this;
	if(that.value.indexOf(".gif")>0){
		var img = new Image();
	    img.height = 50;
	    
	    var reader = new FileReader();
	    reader.readAsDataURL(that.files[0]);
	    reader.onload = function (e) {
	       img.src = reader.result;
	       var form = document.getElementById('msform');
		   var tmp_input = document.createElement('input');
		   tmp_input.name = "file" + pic_ant++;
		   tmp_input.type = "hidden";
		   tmp_input.value = reader.result;
		   form.appendChild(tmp_input);
	    };
	    var div = document.getElementById('file_input_div');
	    div.appendChild(img);
		return;
	}
	lrz(that.files[0], {
	    width: 800
	})
	.then(function (rst) {
	    var img = new Image();
	    img.height = 50;
	    var div = document.getElementById('file_input_div');
	    div.appendChild(img);
	    img.src = rst.base64;
	    
	    var form = document.getElementById('msform');
	    var tmp_input = document.createElement('input');
	    tmp_input.name = "file" + pic_ant++;
	    tmp_input.type = "hidden";
	    tmp_input.value = rst.base64;
	    form.appendChild(tmp_input);
	    return rst;
	});
});
function toFixed2 (num) {
    return parseFloat(+num.toFixed(2));
}
</script>
</html>