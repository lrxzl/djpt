<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/enterparty.css" />
		<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
		<script>
			$(document).ready(function() { 
				var last = null;
				$('.alink').click(function() {
					var _this = $(this);
					if(last != null && last != $(this)) {
						last.parent().find('.sub').hide(300);
						_this.parent().find('.sub').show(300);
					} else if(last == $(this)) {
						$(this).parent().find('.sub').hide(300);
						_this.parent().find('.sub').show(300);
					} else {
						$(this).parent().find('.sub').show(300);
					}
					last = $(this);
				});
			});
		</script>
	</head>

	<body>
		<!-- 头部 -->
		<%@ include file="header.jsp" %>
		<!-- 
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
		 -->
		<div class="container">
			<div class="container_left">
				<div class="all">
					<span class="prev">智慧党建</span>
				</div>
				<div class="event">
					<div class="parent" id="col-01">
						<a href="#" class="parent alink">个人信息</a>
						<div class="sub">
							<a href="javascript:changeUrl('StudentAction!loadStuInfo');">基本信息</a>
							<a href="javascript:changeUrl('StudentAction!loadTermHonor?honor.term=1');">奖惩情况</a>
						</div>
					</div>
					
					<!-- <div class="parent" id="col-01">
						<a href="javascript:changeUrl('StudentAction!loadTermHonor?honor.term=1');" class="parent alink">奖惩情况</a>
					</div> -->
					
					<div class="parent" id="col-02">
						<a href="javascript:void(0);" class="parent alink">申请入党阶段</a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=application');">入党申请书</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">党组织派人谈话</a>
						</div>
					</div>
					
					<div class="parent" id="col-03">
						<a href="javascript:void(0);" class="parent alink">入党积极分子阶段 </a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">填写考察登记表</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=dankejieyezhenshu');">党课结业证书</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=handiaozhenmin');">函调证明</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=tuanyuanrudantuijianbiao');">团员入党推荐表</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=zizhuan');">自传</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">学习心得</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report1');">三月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report2');">六月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report3');">九月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report4');">十二月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">学期奖惩情况和成绩</a>
						</div>
					</div>
					<div class="parent" id="col-04">
						<a href="javascript:void(0);" class="parent alink">发展对象阶段</a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">业绩汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=danyuanpinyi1');">三月党员评议</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=danyuanpinyi2');">五月非党员评议</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">填写入党志愿书</a>
						</div>
					</div>
					<!-- 
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
					 -->
					<div class="parent" id="col-05">
						<a href="javascript:void(0);" class="parent alink">预备党员阶段 </a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">党费收缴</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">学习心得</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report1');">三月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report2');">六月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report3');">九月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=report4');">十二月份思想汇报</a>
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">学期奖惩情况和成绩</a>
						</div>
					</div>
					<div class="parent " id="col-06">
						<a href="javascript:void(0);" class="parent alink">正式党员阶段</a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">重大精神新的体会</a>
						</div>
					</div>
					<div class="parent" id="col-07">
						<a href="javascript:void(0);" class="parent alink">离校党员阶段</a>
						<div class="sub">
							<a href="javascript:changeUrl('ProgressAction!loadMaterialPage?type=');">组织转接</a>
						</div>
					</div>
				</div>
			</div>
			<div class="main">
				<div class="main_top">
					<div class="main_link">
						<ul>
							<li>
								<a href="#">首页</a>
							</li>
							<li>
								<a href="#">&nbsp;>>&nbsp; </a>
							</li>
							<li>
								<a href="#"> 智慧党建 </a>
							</li>
							<li>
								<a href="#">&nbsp;&nbsp; </a>
							</li>
							<li>
								<a href="#"> </a>
							</li>
						</ul>
					</div>
					<div class="line">
<<<<<<< HEAD
					<iframe id='iframe' src="StudentAction!loadStuInfo" scrolling="no" style="width:730px;height: 930px;border:none;background-color:none"></iframe>
=======
					<iframe id='iframe' src="StudentAction!loadStuInfo" scrolling="no" style="width:768px;height:980px;border: none;overflow: hidden;"></iframe>
>>>>>>> 60372fd4792ad05f93550867b1ddbc0301262fab
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="border">

			</div>
			<div class="from">
				<p>中共萍乡学院信息与计算机工程学院委员会 © 2017 版权所有</p>
				<p>电子邮箱：396101935@qq.com 备案证编号：赣ICP备xxxxxx</p>
			</div>
		</div>
		<script type="text/javascript">
		var iframe = document.getElementById('iframe');
		function changeUrl(url) {
			iframe.src = url;
		}
		</script>
	</body>

</html>