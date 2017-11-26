function initAdminJs() {
	
	var form = crtSeriz([''],['']);
	
	var callback = function(rst) {
		alert("callback" + rst);
	};
	
	$('.pmst_box').click(function() {
		//ajaxPost("StudentActionJson!loadStuInfo", form, callback);
	});
	
} 




function crtSeriz(args,vals) {
	var s = "";
	for(var i=0;i<args.length-1;i++) {
		var t = args[i] + "=" + encodeURIComponent(vals[i]);
		s = s + t + "&";
	}
	s = s + args[args.length-1] + "=" + encodeURIComponent(vals[args.length-1]);
	return s;
}

function ajaxPost(the_url,form,callback) {
	$.ajax({
        type: "POST",
        url: the_url + "?v=" + (new Date()).valueOf(),
        cache: false,//不保存缓存
        dataType: "html",
        data:form,
        success: function (data) {
        	if(callback != null)
        		callback(data);
        },
        error: function () {
        	if(callback != null)
        		callback("err");
        }
    });
}