<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>奖惩情况页面</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/jcqk.css" />
		<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="js/laydate.js"></script>
		<script>
			$(document).ready(function() {
				$('.parent').click(function() {
					var _this = $(this);
					$('.parent').each(function() {
						if(_this != $(this))
							$('.parent').find(".sub").css("display", "none");
					});
					$(this).find('.sub').toggle(500);
				})
			});
		</script>
</head>
<body>

			<div class="main">
				<div class="main_top">
					<div class="main_link">
						<ul>
							<li>
								<a href="index.html">首页</a>
							</li>
							<li>
								<a href="#">&nbsp;>&nbsp; </a>
							</li>
							<li>
								<a href="enterparty.html"> 我要入党 </a>
							</li>
							<li>
								<a href="#">&nbsp;>&nbsp; </a>
							</li>
							<li>
								<a href="#"> 个人信息 </a>
							</li>
							<li>
								<a href="#">&nbsp;>&nbsp; </a>
							</li>
							<li>
								<a href="#"> 奖惩情况 </a>
							</li>
						</ul>
					</div>
					<div class="line">
					</div>
				</div>
				<div class="table" align="center">
					<form action="" method="post">
						<table id="table">
							<tr>
								<td>荣获奖、助学金情况:</td>
								<td><input type="text" name="" /></td>
								<td>荣获荣誉证书情况:</td>
								<td><input type="text" name="" /></td>

							</tr>
							<tr>
								<td>院系所任学生干部:</td>
								<td><input type="text" name="" /></td>
								<td>参加、组织活动情况:</td>
								<td><input type="text" name="" /></td>

							</tr>
							<tr>
								<td>迟到旷课早退情况:</td>
								<td><input type="text" name="" /></td>
								<td>挂科情况:</td>
								<td><input type="text" name="" /></td>

							</tr>
							<tr>
								<td>寝室好差情况:</td>
								<td><input type="text" name="" /></td>
								<td>处分情况:</td>
								<td><input type="text" name="" /></td>
							</tr>
							<tr>
								<td align="center" colspan="4">
									<button type="button" class="btn btn-danger btn-lg active" id="button">提交</button>
								</td>
							</tr>

						</table>
					</form>
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
</body>
</html>