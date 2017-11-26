<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <style type="text/css">
    #links {
    	max-width: 600px;
    }
    </style>
  </head>
  <body>
  	 <!--  <a href="index.jsp" class="btn btn-default">党建首页</a>
  	  <a href="StudentAction!loadStuInfo" class="btn btn-default">入党流程</a> -->
  	  <div id="links">
  	  <!-- 1、申请入党阶段（提交入党申请书；党组织是否派人谈话CheckBox）
  	  	   2、确定为入党积极分子（时间和状态）
  	  	   3、入党积极分子培养阶段（图片和文字上传；党课结业证书图片；函调证明图片；团员入党推荐表图片，自传图片
  	  	   			（定死了的）思想汇报是从确定为入党积极分子这个时间点开始与最接近3、6、9、12月份写起，总共四个季度
  	  	   	）
  	   	   4、发展对象的确定（时间和状态）	
  	   	   5、发展对象的考察阶段（填写入党志愿书CheckBox；3份党员评议和5份非党员评议图片；业绩汇报图片；党组织派人谈话；确定入党介绍人；开展集中培训；定期向党组织汇报思想）
  	   	   6、确定为预备党员
  	   	   7、预备党员考察阶段（4个季度的思想汇报；入党宣誓；转正申请图片和文字）
  	   -->
  	   <!-- 
  	   	  <a href="ProgressAction!loadJiangChengPage" class="btn btn-default">申请入党阶段</a>
  	   	 																 确定为入党积极分子（时间和状态）
  	   	  <a href="ProgressAction!loadJiangChengPage" class="btn btn-default">入党积极	分子培养阶段</a>
  	   	  																发展对象的确定（时间和状态）
  	   	  <a href="ProgressAction!loadJiangChengPage" class="btn btn-default">发展对象的考察阶段</a>
  	   																			  确定为预备党员
  	   	  <a href="ProgressAction!loadJiangChengPage" class="btn btn-default">预备党员考察阶段</a>
  	   	  																		转为正式党员（时间和状态）
  	    -->
  	    
		  <!-- <a href="ProgressAction!loadApplicationBookPage" class="btn btn-default">提交入党申请书</a>>>
		  <a href="ProgressAction!loadMonthReportPage?type=report1" class="btn btn-default">3月份思想汇报</a>>>
		  <a href="ProgressAction!loadMonthReportPage?type=report2" class="btn btn-default">6月份思想汇报</a>>>
		  <a href="ProgressAction!loadMonthReportPage?type=report3" class="btn btn-default">9月份思想汇报</a>>>
		  <a href="ProgressAction!loadMonthReportPage?type=report4" class="btn btn-default">12月份思想汇报</a>
  	   --></div>
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
  	 	var links = document.getElementById("links");
  	 	
  	 	/* for(var i=0;i<m_en.length;i++) {
			var a = document.createElement("a");
			a.setAttribute("class","btn btn-default");
			a.innerHTML = m_cn[i];
			a.href = "ProgressAction!loadMaterialPage?type=" + m_en[i].replace("material_","");
			links.appendChild(a);
			
			var img = document.createElement("img");
			img.setAttribute('src','img/gt.png');
			img.style.width=15;
			img.style.height=15;
			links.append(img);
			
			var img1 = document.createElement("img");
			img1.setAttribute('src','img/gt.png');
			img1.style.width=15;
			img1.style.height=15;
			links.append(img1);
  	 	} */
  	 	</script>
  </body>
</html>
