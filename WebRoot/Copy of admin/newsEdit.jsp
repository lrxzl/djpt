<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'newsAdd.jsp' starting page</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<link href="css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="css/index.css" type="text/css">
	<script src="js/jquery1.9.1.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap-wysiwyg.js" type="text/javascript"></script>
	<script src="js/jquery.hotkeys.js" type="text/javascript"></script>
	<style>
	#editor {
		overflow: scroll;
		min-height: 300px;
		max-height: 800px;
	}
	#editor img {
		max-width: 300px;
		max-height: 300px;
	}
	</style>
	
	<script>
	$(document).ready(function(){
		
	});
	var onsubmit = false;
	function dosubmit() {
		if(onsubmit)
			return;
		onsubmit = true;
		var editor_box = document.getElementById('editor');
		var form_add = document.getElementById('form_add');
	    var tmp_input = document.createElement('input');
	    tmp_input.name = "news.content";
	    tmp_input.type = "hidden";
	    tmp_input.value = editor_box.innerHTML;
	    form_add.appendChild(tmp_input);
		form_add.submit();
		return false;
	}
	</script>
  </head>
  
  <body>
  <%@include file="header.jsp" %>
  
  <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		 	<div class="sidebar content-box" style="display: block;">
		             <ul class="nav">
		                 <!-- Main menu -->
		                 <li><a href="AdminAction!loadAdminPage"><i class="glyphicon glyphicon-home"></i>管理首页</a></li>
		                 <!-- <li><a href="calendar.html"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li> -->
		                 <li><a href="AdminAction!loadStuList"><i class="glyphicon glyphicon-list"></i> 学生党员列表 </a></li>
		                 <li class="current"><a href="NewsAction!loadNewsList"><i class="glyphicon glyphicon-stats"></i> 新闻管理</a></li>
		                 <!-- <li><a href="buttons.html"><i class="glyphicon glyphicon-record"></i> Buttons</a></li>
		                 <li><a href="editors.html"><i class="glyphicon glyphicon-pencil"></i> Editors</a></li>
		                 <li><a href="forms.html"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li> -->
		                 <li class="submenu">
		                      <a href="#">
		                         <i class="glyphicon glyphicon-list"></i> Pages
		                         <span class="caret pull-right"></span>
		                      </a>
		                      <!-- Sub menu -->
		                      <ul>
		                         <li><a href="login.html">Login</a></li>
		                         <li><a href="signup.html">Signup</a></li>
		                     </ul>
		                 </li>
		             </ul>
		      </div>
		  </div>
		  
		  
		  
		  </div>
		  </div>
		  
  
  
 	<script>
		function initToolbarBootstrapBindings() {
			var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black',
					'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica',
					'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma',
					'Times', 'Times New Roman', 'Verdana' ], fontTarget = $(
					'[title=Font]').siblings('.dropdown-menu');
			$.each(
						fonts,
						function(idx, fontName) {
							fontTarget
									.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'
											+ fontName + '</a></li>'));
						});
			$('a[title]').tooltip({
				container : 'body'
			});
			$('.dropdown-menu input').click(function() {
				return false;
			}).change(
					function() {
						$(this).parent('.dropdown-menu').siblings(
								'.dropdown-toggle').dropdown('toggle');
					}).keydown('esc', function() {
				this.value = '';
				$(this).change();
			});

			$('[data-role=magic-overlay]').each(
					function() {
						var overlay = $(this), target = $(overlay
								.data('target'));
						overlay.css('opacity', 0).css('position',
								'absolute').offset(target.offset()).width(
								target.outerWidth()).height(
								target.outerHeight());
					});
			if ("onwebkitspeechchange" in document.createElement("input")) {
				var editorOffset = $('#editor').offset();
				$('#voiceBtn').css('position', 'absolute').offset(
						{
							top : editorOffset.top,
							left : editorOffset.left
									+ $('#editor').innerWidth() - 35
						});
			} else {
				$('#voiceBtn').hide();
			}
		};
		function showErrorAlert(reason, detail) {
			var msg = '';
			if (reason === 'unsupported-file-type') {
				msg = "Unsupported format " + detail;
			} else {
				console.log("error uploading file", reason, detail);
			}
			$(
					'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'
							+ '<strong>File upload error</strong> '
							+ msg
							+ ' </div>').prependTo('#alerts');
		};
		initToolbarBootstrapBindings();
		$('#editor').wysiwyg({
			fileUploadError : showErrorAlert
		});
	</script>
  </body>
</html>

