//////定义上传方法函数
var id="1";
var list=["aa"];
var i=0;
var k="11";
var img_cont="1";
function PreviewImage(imgFile) { 
    var pattern = /(\.*.PNG$)|(\.*.png$)|(\.*.jpg$)|(\.*.jpeg$)|(\.*.bmp$)/;
    if(!pattern.test(imgFile.value)) { 
      alert("系统仅支持PNG/png/jpg/jpeg/bmp格式的照片！");  
      imgFile.focus();
    }else{
       //定义图片路径 
       var path;
       //添加显示图片的HTML元素
   		id += 1;
       /*判断图片上限*/
   		var imgNum=document.getElementsByTagName("img");
   		if(imgNum.length<9){  
   			for(var j=0;j<list.length;j++){
       		if(list[j]==imgFile.value){
       			alert("此图片已存在");
       			return false;
       		}
       	}
       	$("#img_cont"+img_cont).append("<div><div id='"+id+"'><img src=' ' id='"+imgFile.value+"'/></div><a class='hide delete-btn'>删除</a></div>");
       	img_cont+=1;
       	list[i+1]=imgFile.value;
   		i+=1;
       }else{alert("最多上传九张图片");}
       //判断浏览器类型
       if(document.all){ 
       //兼容IE
        imgFile.select(); 
       	path = document.selection.createRange().text;
        document.getElementById(id).innerHTML=""; 
        document.getElementById(id).style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//使用滤镜效果 
       }else{
        //兼容其他浏览器 
        path = URL.createObjectURL(imgFile.files[0]);
       	document.getElementById(id).innerHTML = "<img src='"+path+"' width='106' height='80' id='"+imgFile.value+"'/>"; 
       }
    } 
    if(imgNum.length<=9){
    	 $('.all').append(" <div class='img-cont' id='img_cont" +k+"'><a href='javascript:;' class='file' id='file'"+k+">选择文件<input type='file' onchange='PreviewImage(this)' value='图片' name='img0' id='tp1'/></a></div>");
    	   	k+=1;
    }
}  

//控制"按钮"显示与隐藏
$(".all").on("mouseenter","div",function(){
    var that=this;//类名为img-cont
    var dom=$(that).children("div").children("a");
    dom.removeClass("hide");
    //为点击事件解绑，防止重复执行
    dom.off("click");
    dom.on("click",function(){
    	var img=$(that).children("div").children("div").children("img").attr("id");
    	 for(var j=0;j<list.length;j++){
        	if(list[j]==img){
        		list.splice(j, 1);
        	}
        }
    	//删除当前图片
     	dom.parent().parent().remove();
     });
}).off("mouseleave","div").on("mouseleave","div",function(){
    var that=this;
    $(that).children("div").children("a").addClass("hide");
})

 
   
