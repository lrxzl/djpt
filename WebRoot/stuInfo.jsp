<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生个人信息</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/stuInfo.css" />
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="js/laydate.js"></script>
  </head>
  
  <body>
	<div class="main">
			<div class="table" align="center">
				<form action="" method="post" id="form">
					<table>
						<tr>
							<td>学号:</td>
							<td><input type="text" name="" disabled="disabled" /></td>
							<td>姓名:</td>
							<td><input type="text" name="" /></td>
							<td align="bottom" colspan="2" rowspan="4"
								style="border: 1px solid #C0C0C0;">照片 <!--<div class="form-group">
							   
							    <input type="file" id="exampleInputFile">
							  
							  </div>-->
							</td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><input type="radio" name="" value="m" />男 <input
								type="radio" name="" value="f" />女</td>
							<td>班级:</td>
							<td><select>
									<option value="15soft1">软件工程一班</option>
									<option value="15soft2">软件工程二班</option>
									<option value="soft1">软件技术一班</option>
									<option value="soft2">软件技术二班</option>
							</select></td>

						</tr>
						<tr>
							<td align="left">出生日期:</td>
							<td align="left"><input class="laydate-icon" id="demo"
								placeholder="请输入日期" /></td>

							<td align="left">身份证号码:</td>
							<td align="left"><input type="text" name="" /></td>

						</tr>
						<tr>
							<td align="left">籍贯:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">民族:</td>
							<td align="left"><select>
									<option value="han">汉族</option>
									<option value="man">满族</option>
									<option value="dai">傣族</option>

							</select></td>

						</tr>

						<tr>
							<td align="left">宿舍号:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">QQ号码:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">手机号:</td>
							<td align="left"><input type="text" name="" /></td>
						</tr>
						<tr>
							<td align="left">微信号:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">家庭邮编:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">家庭详细地址:</td>
							<td align="left"><input type="text" name="" /></td>

						</tr>
						<tr>
							<td align="left">院、班担任职务:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">家庭其他成员:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">申请入党时间:</td>
							<td align="left"><input class="laydate-icon" id="demo1"
								placeholder="请输入日期" /></td>
						</tr>
						<tr>
							<td align="left">列为入党积极分子时间:</td>
							<td align="left"><input class="laydate-icon" id="demo4"
								placeholder="请输入日期" /></td>
							<td align="left">列为预备党员时间:</td>
							<td align="left"><input class="laydate-icon" id="demo2"
								placeholder="请输入日期" /></td>
							<td align="left">转正时间:</td>
							<td align="left"><input class="laydate-icon" id="demo3"
								placeholder="请输入日期" /></td>
						</tr>
						<tr>

							<td align="left">发展状态:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">党员状态:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">流动党员:</td>
							<td align="left"><input type="text" name="" /></td>
						</tr>
						<tr>
							<td align="left">入党联系人:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">入党培养老师:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">所在党支部:</td>
							<td align="left"><input type="text" name="" /></td>

						</tr>
						<tr>
							<td align="left">发展支部书记:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">党总支书记:</td>
							<td align="left"><input type="text" name="" /></td>
							<td align="left">毕业党籍凋拔:</td>
							<td align="left"><input type="text" name="" /></td>
						</tr>
						<tr>

							<td align="left">备注:</td>
							<td align="left"><input type="text" name="" /></td>
						</tr>
						<tr>
							<td align="center" colspan="6">
								<button type="submit" class="btn btn-danger btn-lg active"
									id="button">提交</button>
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
  </body>
</html>
