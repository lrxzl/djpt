<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>MyJsp.jsp</title>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
  </head>
  
  <body>
  
  <div class="content">
	  <form id="msform" action="ProgressAction!updateStuInfo" method="post">
	  <div class="form-group row">
		  <div class="col-sm-2">
		  	姓名<input class="form-control" name="stu.name" value="${stu.name}" />
		  	性别<input class="form-control" name="stu.sex" value="${stu.sex}" />
		  	民族<input class="form-control" name="stu.minzu" value="${stu.minzu}" />
		  	籍贯<input class="form-control" name="stu.jiguan" value="${stu.jiguan}" />
		  	出生日期<input class="form-control" name="stu.chushentime" value="${stu.chushentime}" />
		  	在读学历<input class="form-control" name="stu.zaiduxueli" value="${stu.zaiduxueli}" />
		  	</div>
		  
		  <div class="col-sm-2">
		  	班级<input class="form-control" name="stu.banji" value="${stu.banji}" />
		  	家庭住址<input class="form-control" name="stu.jiatinzhuzhi" value="${stu.jiatinzhuzhi}" />
			联系电话<input class="form-control" name="stu.lianxidianhua" value="${stu.lianxidianhua}" />
		  	提交入党申请时间<input class="form-control" name="stu.tijiaorudanshenqintime" disabled="" value="${stu.tijiaorudanshenqintime}" />
		  	列为入党积极份子时间<input class="form-control" name="stu.lieweirudanjijifenzitime"  disabled=""value="${stu.lieweirudanjijifenzitime}" />
			列为预备党员时间<input class="form-control" name="stu.liewweiyubeidantime" disabled="" value="${stu.liewweiyubeidantime}" />
		  </div>
		  
		  <div class="col-sm-2">
		  	转正时间<input class="form-control" name="stu.zhuangzhentime" disabled="" value="${stu.zhuangzhentime}" />
			发展党支部书记<input class="form-control" name="stu.fazhandanzhibushuji" disabled="" value="${stu.fazhandanzhibushuji}" />
		  	党支部书记<input class="form-control" name="stu.danzhibushuji" disabled="" value="${stu.danzhibushuji}" />
			所属党支部<input class="form-control" name="stu.suoshudanzhibu" disabled="" value="${stu.suoshudanzhibu}" />
			毕业党籍调拨<input class="form-control" name="stu.biyedanjidiaobo" disabled="" value="${stu.biyedanjidiaobo}" />
		  	备注<input class="form-control" name="stu.beizhu" value="${stu.beizhu}" />
		  </div>
	  </div>
	  
	  <div class="row">
		  <div class="form-group col-sm-4 col-sm-offset-1">
		  	<input class="form-control" type="submit" value="提交"/>
		  </div>
	  </div>
	  
	  </form>
	</div>
	
	<div class="form-group row">
		<div class="col-sm-6">
			<form action="ProgressAction!submitApplication" method="post" enctype="application/x-www-form-urlencoded">
				入党申请：
				<textarea class="form-control" name="material.content" rows="12" cols="60">${material.content}</textarea>
				入党申请书附件（入党申请书拍照）：
				<input class="form-control" type="file" name="img" >
				<br>
				<input class="form-control" type="submit" value="提交">
			</form>
		</div>
	</div>
	
  	第1次思想汇报
  	<form action="MaterialAction!task1" method="post" enctype="multipart/form-data">
   		<textarea type="text" name="text"></textarea><br>
   		<input type="file" name="file" /><br>
   		<input type="file" name="img" /><br>
   		<input type="submit" />
   	</form>
   	
   	第2次思想汇报
   	<form action="MaterialAction!task2" method="post" enctype="multipart/form-data">
   		<textarea type="text" name="text" ></textarea><br>
   		<input type="file" name="file" /><br>
   		<input type="file" name="img" /><br>
   		<input type="submit" />
   	</form>
   	
   	第3次思想汇报
   	<form action="MaterialAction!task3" method="post" enctype="multipart/form-data">
   		<textarea type="text" name="text"></textarea><br>
   		<input type="file" name="file" /><br>
   		<input type="file" name="img" /><br>
   		<input type="submit" />
   	</form>
   	
  </body>
</html>
