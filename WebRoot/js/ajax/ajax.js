function ajax
$.ajax({
type: "POST",
url: "PostActionJson!ajax_load?v=" + (new Date()).valueOf(),//使用日期来做随机数
cache: false,//不保存缓存
dataType: "html",
data:$("#form1").serialize(),
success: function (data) {
	processResponse(data);
},
error: function () {
    alert("oh...oh...oh...");
    }
});