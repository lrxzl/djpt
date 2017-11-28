<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生个人信息</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/stuInfo.css" />
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="js/laydate.js"></script>
<link ref="stylesheet" href="css/bootstrap.min.css" />
<script type="text/javascript">
function dosubmit() {
	var form = document.getElementById('msform');
	form.submit();
}
</script>
<style>

input[type="text"],input[type="text"],#table select
{
	box-sizing: border-box;
	/* text-align: center; */
	/* font-size: 1.4em; */
	height: 2em;
	border-radius: 4px;
	border: 1px solid #c8cccf;
	color: #6a6f77;
	-web-kit-appearance: none;
	-moz-appearance: none;
	display: block;
	outline: 0;
	padding: 0 0.5em;
	text-decoration: none;
	width: 100%;
}
input[type="text"]:focus {
	border: 1px solid #ff7496;
}
::-moz-placeholder { /* Mozilla Firefox 4 to 18 */
  color: #6a6f77;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
  color: #6a6f77;
}
input::-webkit-input-placeholder {
  color: #6a6f77;
}
#table td{ width: 190px}
#table {height:700px;margin-left: -30px}
#table input,#table select{width: 190px;margin: 3px;}
</style>

</head>
  
  <body>
  	<center><div style="font-size: 20px">我的信息</div></center>
	<div class="main">
			<div class="table" style="text-align: left;">
				<form id="msform" action="StudentAction!updateStuInfo" method="post">
					<table id="table">
						<tr>
							<td>学号:<input type="text" name="stu.stuId" disabled="disabled" value="${stu.stuId}"/></td>
							<td>姓名:<input type="text" name="stu.name" value="${stu.name}" /></td>
							<td align="bottom" colspan="1" rowspan="4"
								style="border: 1px solid #C0C0C0;">照片
								<!--<div class="form-group">
							    <input type="file" id="exampleInputFile">
							  	</div>-->
							</td>
						</tr>
						<tr>
							<td>
							性别：
							 <select name="stu.sex">
								 <option value="男" ${stu.sex eq "男"?"selected":""}>男</option>
								 <option value="女" ${stu.sex eq "女"?"selected":""}>女</option>
							 </select>
							 </td>
							<td>
							班级:
							<select name="stu.banji">
									<option value="15软件工程一班" ${stu.banji eq "15软件工程一班"?"selected":""}>15软件工程一班</option>
									<option value="15软件工程二班" ${stu.banji eq "15软件工程一班"?"selected":""}>15软件工程二班</option>
									<option value="16软件技术一班" ${stu.banji eq "15软件工程一班"?"selected":""}>16软件技术一班</option>
									<option value="16软件技术二班" ${stu.banji eq "15软件工程一班"?"selected":""}>16软件技术二班</option>
									<option value="17软件工程一班" ${stu.banji eq "15软件工程一班"?"selected":""}>17软件工程一班</option>
									<option value="17软件工程二班" ${stu.banji eq "15软件工程一班"?"selected":""}>17软件工程二班</option>
									<option value="14软件技术一班" ${stu.banji eq "15软件工程一班"?"selected":""}>14软件技术一班</option>
									<option value="14软件技术二班" ${stu.banji eq "15软件工程一班"?"selected":""}>14软件技术二班</option>
									<option value="13软件工程一班" ${stu.banji eq "15软件工程一班"?"selected":""}>13软件工程一班</option>
									<option value="13软件工程二班" ${stu.banji eq "15软件工程一班"?"selected":""}>13软件工程二班</option>
							</select></td>
						</tr>
						<tr>
							<td align="left">出生日期:<input class="laydate-icon" id="demo0" 
							placeholder="请输入日期" name="stu.chushentime" value="${stu.chushentime}" /></td>
							<td align="left">身份证号码:<input type="text" name="stu.shenfenzhen" value="${stu.shenfenzhen }" /></td>
						</tr>
						<tr>
							<td align="left">籍贯:<input type="text" name="stu.jiguan" value="${stu.jiguan}" /></td>
							<td align="left">
								民族:
								<select name="stu.minzu" style="width: 180px">
									<option value="汉族" ${stu.minzu eq "汉族"?"selected":"" }>汉族</option>
									<option value="满族" ${stu.minzu eq "满族"?"selected":"" }>满族</option>
									<option value="傣族" ${stu.minzu eq "傣族"?"selected":"" }>傣族</option>
								</select>
							</td>
						</tr>

						<tr>
							<td align="left">宿舍号:<input type="text" name="stu.sushe" value="${stu.sushe}"/></td>
							<td align="left">QQ号码:<input type="text" name="stu.qq" value="${stu.qq}" /></td>
							<td align="left">手机号:<input type="text" name="stu.lianxidianhua" value="${stu.lianxidianhua}" /></td>
						</tr>
						<tr>
							<td align="left">微信号:<input type="text" name="stu.wechat" value="${stu.wechat}" /></td>
							<td align="left">家庭详细地址:<input type="text" name="stu.jiatinzhuzhi" value="${stu.jiatinzhuzhi}" /></td>
							<td align="left">院、班担任职务:<input type="text" name="stu.danrenzhiwu" value="${stu.danrenzhiwu}" /></td>
						</tr>
						<tr>
							<td align="left">提交入党申请时间:<input class="laydate-icon" type="text" id="demo1"
								 disabled="disabled" placeholder="请输入日期" name="stu.tijiaorudanshenqintime" value="${stu.tijiaorudanshenqintime}"/></td>
							<td align="left">列为入党积极分子时间:<input class="laydate-icon" id="demo4"
								 disabled="disabled" placeholder="请输入日期" name="stu.lieweirudanjijifenzitime" value="${stu.lieweirudanjijifenzitime}" /></td>
							<td align="left">列为预备党员时间:<input class="laydate-icon" id="demo2"
								 disabled="disabled" placeholder="请输入日期" name="stu.liewweiyubeidantime" value="${stu.liewweiyubeidantime}" /></td>
						</tr>
						<tr>
							<td align="left">转正时间:<input class="laydate-icon" id="demo3"
								 disabled="disabled"placeholder="请输入日期" name="stu.zhuangzhentime" value="${stu.zhuangzhentime}" /></td>
							<td align="left">发展状态:<input type="text" name="stu.state" value="${stu.state}" disabled="disabled" /></td>
							<td align="left">在读学历:<input type="text" name="stu.zaiduxueli" value="${stu.zaiduxueli}" /></td>
						</tr>
						<tr>
							<td align="left">流动党员:<input type="text" name="stu.liudongdanyuan" value="${stu.liudongdanyuan}" disabled="disabled"/></td>
							<td align="left">入党联系人:<input type="text" name="stu.lianxiren" value="${stu.lianxiren}" disabled="disabled" /></td>
							<td align="left">入党培养人:<input type="text" name="stu.peiyangren" value="${stu.peiyangren}" disabled="disabled"/></td>
						</tr>
						<tr>
							<td align="left">所在党支部:<input type="text" name="stu.suoshudanzhibu" value="${stu.suoshudanzhibu}" /></td>
							<td align="left">发展支部书记:<input type="text" name="stu.fazhandanzhibushuji" value="${stu.fazhandanzhibushuji}" /></td>
							<td align="left">党总支书记:<input type="text" name="stu.danzhibushuji" value="${stu.danzhibushuji}" /></td>
						</tr>
						<tr>
							<td align="left">毕业党籍凋拔:<input type="text" name="stu.biyedanjidiaobo" value="${stu.biyedanjidiaobo}" /></td>
							<td align="left">备注:<input type="text" name="stu.beizhu" value="${stu.beizhu}" /></td>
						</tr>
						<tr>
							<td align="center" colspan="6">
								<button type="button" class="btn btn-danger btn-lg active" id="button" onclick="dosubmit()">提交</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
  </body>
  <script type="text/javascript">
			!function(){
			
				laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
			
				laydate({elem: '#demo0'});//绑定元素
				laydate({elem: '#demo1'});
				laydate({elem: '#demo2'});
				laydate({elem: '#demo3'});
				laydate({elem: '#demo4'});
			}();

		//日期范围限制
		
		var start = {
		
		    elem: '#start',
		
		    format: 'YYYY-MM-DD',
		
		    min: laydate.now(), //设定最小日期为当前日期
		
		    max: '2099-06-16', //最大日期
		
		    istime: true,
		
		    istoday: false,
		
		    choose: function(datas){
		
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		
		         end.start = datas //将结束日的初始值设定为开始日
		
		    }
		
		};
		
		
		
		var end = {
		
		    elem: '#end',
		
		    format: 'YYYY-MM-DD',
		
		    min: laydate.now(),
		
		    max: '2099-06-16',
		
		    istime: true,
		
		    istoday: false,
		
		    choose: function(datas){
		
		        start.max = datas; //结束日选好后，充值开始日的最大日期
		
		    }
		
		};
		
		laydate(start);
		
		laydate(end);
		
		
		
		//自定义日期格式
		
		laydate({
		
		    elem: '#test1',
		
		    format: 'YYYY年MM月DD日',
		
		    festival: true, //显示节日
		
		    choose: function(datas){ //选择日期完毕的回调
		
		        alert('得到：'+datas);
		
		    }
		
		});
		
		
		
		//日期范围限定在昨天到明天
		
		laydate({
		
		    elem: '#hello3',
		
		    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
		
		    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
		});
		
		</script>
</html>
