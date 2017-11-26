<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="js/esl.js"></script>
<script src="js/jquery-1.11.0.js"></script>

<script type="text/javascript">
        // 路径配置
        require.config({
            paths:{ 
                'echarts' : 'http://echarts.baidu.com/build/echarts',
                'echarts/chart/bar' : 'http://echarts.baidu.com/build/echarts',
        		'echarts/chart/pie' : 'http://echarts.baidu.com/build/echarts'
            }
        });
        
		var man=0;
		var woman=0; 
		 $.ajax({  
            type : 'GET',  
            url : 'ChartAction!updateSex',  
            //date:params,
            dataType : 'json',  
            async : false, /* 异步与同步，当为false为同步*/ 
            success : function(result) { 
            		//遍历Json数据
            		  
            		 $.each(result, function(i,item){      
            			if(item.sex=='男'){
            				man=man+1;
            			}else{
            				woman=woman+1;
            			}
            		})  
            		   		
            }
        }); 
       	var Number=[man,woman];
		//饼状图
 optionpie = {
　　title: {
　　　　text: '信息与计算机学院党员男女比例图',subtext: '测试人员',x: 'center'
    },
　　tooltip: {
　　　　trigger: 'item',
　　　　formatter: "{a}<br/>{b} : {c} ({d}%)"
    },
　　legend: {
　　　　orient: 'vertical',
　　　　x: 'left',
　　　　data: ['男', '女']
    },
    toolbox: {
　　　　show: true,
　　　　feature: {
　　　　　　restore: true,
　　　　　　saveAsImage: true
      }
    },
　　calculable: true,
　　series: [
　　{
　　　　name: '党员男女比例百分比',
　　　　type: 'pie',
　　　　radius: '55%',
　　　　center: ['50%', 225],
　　　　data:[{ value: man, name: '男' },
　　　　{ value: woman, name: '女'}],
 itemStyle:{ 
                            normal:{ 
                                label:{ 
                                   show: true, 
                                   formatter: '{b} : {c} ({d}%)' 
                                }, 
                                labelLine :{show:true}
                            } 
                        } 
	   
　　}
　　]
};

		
		
		
		
		//柱形图
		option = {
					title: {
　　　　		  			text: '信息与计算机学院党员男女比例图',subtext: '测试人员',x: 'center'
    		  			},
　　					tooltip: {
　　　　					trigger: 'axis',
　　　　					formatter: "{a0} : {c0}",/* 模板变量有 {a}, {b}，{c}，{d}，{e}，分别表示系列名，数据名，数据值等 */
			　			axisPointer : {type : 'line'}      // 坐标轴指示器，坐标轴触发有效        // 默认为直线，可选为：'line' | 'shadow'
						},
　　 				legend: {	/* 图例（） */
 						show: true,  			
　　　　					x: 'left',
　　　					orient: 'vertical',
　　　　					data: ['人数']
						}, 
　　 				calculable: true, 
　　					xAxis: [
　　							{
　　　　							type: 'category',
　　　　							data: ['男','女']
　							　	}
　　							],
　　					yAxis: [
　　							{
　　　　							type: 'value',
　　　　							splitArea: { show: true },
　　							}
　　							],
					toolbox : {  /* 工具栏。内置有导出图片，数据视图，动态类型切换，数据区域缩放，重置五个工具 */
                   		show : true,  /* 是否显示工具栏组件 */
                    	feature : {  /* 各工具配置项。除了各个内置的工具按钮外，还可以自定义工具按钮。注意，自定义的工具名字，只能以 my 开头 */
                        	mark : {  
                            	show : false  
                        		},  
                        	dataView : {  /* 数据视图工具，可以展现当前图表所用的数据，编辑后可以动态更新。 */
                           		show : true,  
                            	readOnly : false  
                        		},  
                       		magicType : { /* 动态类型切换 */ 
                            	show : true,  
                           		type : [ 'line','bar']  /* 切换类型：启用的动态类型，包括'line'（切换为折线图）, 'bar'（切换为柱状图）, 'stack'（切换为堆叠模式）, 'tiled'（切换为平铺模式）。 */
                        	/* type: ['line', 'bar', 'stack', 'tiled'] */
                        		},  
                        	restore : {  /* 配置项还原。 */
                            	show : true  
                        		},  
                       		saveAsImage : {/* 保存为图片。 */  
                            	show : true  
                        		},
                    		}  
                		},  
　　					series: [
　　						{
　　　　						name: '人数',
　　　　						type: 'bar',
　　　　						data:  Number, 
 							barWidth : 60,//柱图宽度 
 							barGap:'50%',
 							barCategoryGap:20,
 							itemStyle:{
								normal:{barBorderWith:6,}, //柱形的颜色(默认玫红/深红色)
								emphasis:{color:'yellow'} //鼠标悬停变色
								}
						}
　　					]
				};
				
				
				
				
				
			var TuanYuan=0;var TuanYuan_man=0;var TuanYuan_woman=0;var TuanYuan_zhuan=0;var TuanYuan_ben=0;	
			var JijiFenzi=0;var JijiFenzi_man=0;var JijiFenzi_woman=0;var JijiFenzi_zhuan=0;var JijiFenzi_ben=0;	
			var YuBei=0;var YuBei_man=0;var YuBei_woman=0;var YuBei_zhuan=0;var YuBei_ben=0;	
			var ZhengShi=0;var ZhengShi_man=0;var ZhengShi_woman=0;var ZhengShi_zhuan=0;var ZhengShi_ben=0;
			
			
		 $.ajax({  
            type : 'GET',  
            url : 'ChartAction!updateSex',  
            //date:params,
            dataType : 'json',  
            async : false, /* 异步与同步，当为false为同步*/ 
            success : function(result) { 
            		//遍历Json数据
            		  
            		 $.each(result, function(i,item){      
            			if(item.state=='团员'){
            				TuanYuan=TuanYuan+1;
            				if(item.sex=='男'){
            					TuanYuan_man=TuanYuan_man+1;
            				}
            				if(item.sex=='女'){
            					TuanYuan_woman=TuanYuan_woman+1;
            				}
            				if(item.zaiduxueli=='专科'){
            					TuanYuan_zhuan=TuanYuan_zhuan+1;
            				}
            				if(item.zaiduxueli=='本科'){
            					TuanYuan_ben=TuanYuan_ben+1;
            				}
            			}
            			if(item.state=='入党积极分子'){
            				JijiFenzi=JijiFenzi+1;
            				if(item.sex=='男'){
            					JijiFenzi_man=JijiFenzi_man+1;
            				}
            				if(item.sex=='女'){
            					JijiFenzi_woman=JijiFenzi_woman+1;
            				}
            				if(item.zaiduxueli=='专科'){
            					JijiFenzi_zhuan=JijiFenzi_zhuan+1;
            				}
            				if(item.zaiduxueli=='本科'){
            					JijiFenzi_ben=JijiFenzi_ben+1;
            				}
            			}
            			if(item.state=='YuBei'){
            				YuBei=YuBei+1;
            				if(item.sex=='男'){
            					YuBei_man=YuBei_man+1;
            				}
            				if(item.sex=='女'){
            					YuBei_woman=YuBei_woman+1;
            				}
            				if(item.zaiduxueli=='专科'){
            					YuBei_zhuan=YuBei_zhuan+1;
            				}
            				if(item.zaiduxueli=='本科'){
            					YuBei_ben=YuBei_ben+1;
            				}
            			}
            			if(item.state=='ZhengShi'){
            				ZhengShi=ZhengShi+1;
            				if(item.sex=='男'){
            					ZhengShi_man=ZhengShi_man+1;
            				}
            				if(item.sex=='女'){
            					ZhengShi_woman=ZhengShi_woman+1;
            				}
            				if(item.zaiduxueli=='专科'){
            					ZhengShi_zhuan=ZhengShi_zhuan+1;
            				}
            				if(item.zaiduxueli=='本科'){
            					ZhengShi_ben=ZhengShi_ben+1;
            				}
            			}
            		}) 		
            }
        }); 
        var man=[TuanYuan_man,JijiFenzi_man,YuBei_man,ZhengShi_man];
        var woman=[TuanYuan_woman,JijiFenzi_woman,YuBei_woman,ZhengShi_woman];
        var zhuan=[TuanYuan_zhuan,JijiFenzi_zhuan,YuBei_zhuan,ZhengShi_zhuan];
        var ben=[TuanYuan_ben,JijiFenzi_ben,YuBei_ben,ZhengShi_ben];
        var Total=[TuanYuan,JijiFenzi,YuBei,ZhengShi];
        var names=['团员','入党积极分子','预备党员','正式党员'];
        var map = new Map(); 
        /* for(var i=0;i<Total.length;i++){
        	map.put(names[i],Total[i]);
        	alert(names[i]); 
        } */
       
        
 //饼状图,团员,入党积极分子,预备党员,正式党员,       
optionpie1 = {
　　title: {
　　　　text: '信息与计算机学院党员比例图',subtext: '测试人员',x: 'center'
　　},
　　tooltip: {
　　　　trigger: 'item',
　　　　formatter: "{a}<br/>{b} : {c} ({d}%)"
　　},
　　legend: {
　　　　orient: 'vertical',
　　　　x: 'left',
　　　　data: names
　　},
　　toolbox: {
　　　　show: true,
　　　　feature: {
　　　　　　restore: true,
　　　　　　saveAsImage: true
　　　　}
　　},
　　calculable: true,
　　series: [
　　{
　　　　name: '党员男女比例百分比',
　　　　type: 'pie',
　　　　radius: '55%',
　　　　center: ['50%', 225],
　　　　data:[{ value: TuanYuan, name: '团员' },
　　　　		  { value: JijiFenzi, name: '入党积极分子'},
			{ value: YuBei, name: '预备党员'},
			{ value: ZhengShi, name: '正式党员'}],
 itemStyle:{ 
                            normal:{ 
                                label:{ 
                                   show: true, 
                                   formatter: '{b} : {c} ({d}%)' 
                                }, 
                                labelLine :{show:true}
                            } 
                        } 
	   
　　}
　　]
};

//柱形图,团员,入党积极分子,预备党员,正式党员,(图例:男,女,专科,本科)
	optionbar = {
		title: {
　　　　		text: '信息与计算机学院党员比例图',subtext: '测试人员',x: 'center'
　　				},
　　		tooltip: {
　　　　		trigger: 'axis',
　　　　		formatter: "{b}<br/>{a0} : {c0}<br/>{a1} : {c1}<br/>{a2} : {c2}<br/>{a3} : {c3}",/* 模板变量有 {a}图例, {b}x轴，{c}值，{d}，{e}，分别表示系列名，数据名，数据值等 */
			axisPointer : {type : 'line'}      // 坐标轴指示器，坐标轴触发有效        // 默认为直线，可选为：'line' | 'shadow'
			},
　　 	legend: {	/* 图例（） */
 			show: true,  			
　　　　		x: 'left',
　　　		orient: 'vertical',
			padding: [10,10,10,10],
　　　　		data: ['男','女','专科','本科']
　　			}, 
		calculable: true, 
　　		xAxis: [
　　			{
　　　　			type: 'category',
　　　　			data: names
　			}
　　				],
		 yAxis: [
　　			{
　　　　			type: 'value',
　　　　			splitArea: { show: true },
　　			}
　　				],
		 toolbox : {  /* 工具栏。内置有导出图片，数据视图，动态类型切换，数据区域缩放，重置五个工具 */
                show : true,  /* 是否显示工具栏组件 */
                feature : {  /* 各工具配置项。除了各个内置的工具按钮外，还可以自定义工具按钮。注意，自定义的工具名字，只能以 my 开头 */
              		mark : {  
                     	show : false  
                     	},  
                	dataView : {  /* 数据视图工具，可以展现当前图表所用的数据，编辑后可以动态更新。 */
                     	show : true,  
                     	readOnly : false  
                     	},  
                	 magicType : { /* 动态类型切换 */ 
                     	show : true,  
                     	type : [ 'line','bar']  /* 切换类型：启用的动态类型，包括'line'（切换为折线图）, 'bar'（切换为柱状图）, 'stack'（切换为堆叠模式）, 'tiled'（切换为平铺模式）。 */
                    	/* type: ['line', 'bar', 'stack', 'tiled'] */
                      	},  
                 	 restore : {  /* 配置项还原。 */
                     	 show : true  
                     	 },  
                 	 saveAsImage : {/* 保存为图片。 */  
                      	show : true  
                      	},
                  	 }  
                  },  
　　		series: [
　　			{
　　　　			name: '男',
　　　　			type: 'bar',
　　　　			data: man, 
 				barMaxWidth : 60,//柱图宽度 
 				barGap:'25%',
 				barCategoryGap:20,
 				itemStyle:{
					normal:{barBorderWith:6,}, //柱形的颜色(默认玫红/深红色)
					emphasis:{color:'yellow'} //鼠标悬停变色
					}
				},
			{
　　　　			name: '女',
　　　　			type: 'bar',
　　　　			data:  woman, 
 				barMaxWidth : 60,//柱图宽度 
 				itemStyle:{
					normal:{barBorderWith:6,}, //柱形的颜色(默认玫红/深红色)
					emphasis:{color:'yellow'} //鼠标悬停变色
					}
				},
			{
　　　　			name: '专科',
　　　　			type: 'bar',
　　　　			data: zhuan, 
 				barMaxWidth : 60,//柱图宽度 
 				itemStyle:{
					normal:{barBorderWith:6,}, //柱形的颜色(默认玫红/深红色)
					emphasis:{color:'yellow'} //鼠标悬停变色
					}
				},
			{
　　　　			name: '本科',
　　　　			type: 'bar',
　　　　			data:  ben, 
 				barMaxWidth : 60,//柱图宽度 
 				itemStyle:{
					normal:{barBorderWith:6,}, //柱形的颜色(默认玫红/深红色)
					emphasis:{color:'yellow'} //鼠标悬停变色
					}
				},
　　					]
			};

require(
[
　　'echarts',
　　'echarts/chart/pie',
　　'echarts/chart/bar'
],
function (ec) {
　　//饼状图
　　var pieChart = ec.init(document.getElementById('pie'));
　　pieChart.setOption(optionpie);
　　//柱状图
　　var myChart = ec.init(document.getElementById('bar'));
　　myChart.setOption(option);

	//柱状图1
	var barChart=ec.init(document.getElementById('bar1'));
	barChart.setOption(optionbar);
	//饼状图
　　var pieChart = ec.init(document.getElementById('pie1'));
　　pieChart.setOption(optionpie1);
}
)
</script>
</head>
<body>
	<%@include file="header.jsp"%>
	<div id="pie" style="height:400px"></div>
	<div id="bar" style="height:400px;width: 600px;"></div>
	<div id="pie1" style="height:400px"></div>
	<div id="bar1" style="height:400px;width: 1000px;"></div>
</body>
</html>

