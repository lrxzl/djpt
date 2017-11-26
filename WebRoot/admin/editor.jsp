<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'editor.jsp' starting page</title>
  </head>
  
  <body>

	  <fieldset>
		  	<div class="container">
		  		<div>新闻标题：<input name="news.title" placeHolder="新闻标题" value="${news.title}"/></div>
			  	<div>新闻来源：<input name="news.source" placeHolder="新闻来源" value="${news.source}"/></div>
			  	<div>新闻类型：
			  		<select name="news.type">
			  			<option value="类型1">类型1</option>
			  			<option value="类型2">类型2</option>
			  			<option value="类型3">类型3</option>
			  		</select>
			  	</div>
				<div id="alerts"></div>
				<div class="btn-toolbar" data-role="editor-toolbar"
					data-target="#editor">
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
							data-original-title="Font"><i class="icon-font"></i><b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li>
							<li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li>
							<li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li>
							<li><a data-edit="fontName Arial Black"
								style="font-family:'Arial Black'">Arial Black</a></li>
							<li><a data-edit="fontName Courier"
								style="font-family:'Courier'">Courier</a></li>
							<li><a data-edit="fontName Courier New"
								style="font-family:'Courier New'">Courier New</a></li>
							<li><a data-edit="fontName Comic Sans MS"
								style="font-family:'Comic Sans MS'">Comic Sans MS</a></li>
							<li><a data-edit="fontName Helvetica"
								style="font-family:'Helvetica'">Helvetica</a></li>
							<li><a data-edit="fontName Impact"
								style="font-family:'Impact'">Impact</a></li>
							<li><a data-edit="fontName Lucida Grande"
								style="font-family:'Lucida Grande'">Lucida Grande</a></li>
							<li><a data-edit="fontName Lucida Sans"
								style="font-family:'Lucida Sans'">Lucida Sans</a></li>
							<li><a data-edit="fontName Tahoma"
								style="font-family:'Tahoma'">Tahoma</a></li>
							<li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li>
							<li><a data-edit="fontName Times New Roman"
								style="font-family:'Times New Roman'">Times New Roman</a></li>
							<li><a data-edit="fontName Verdana"
								style="font-family:'Verdana'">Verdana</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
							data-original-title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
							<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
							<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
						</ul>
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="bold" title=""
							data-original-title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
						<a class="btn" data-edit="italic" title=""
							data-original-title="Italic (Ctrl/Cmd+I)"><i
							class="icon-italic"></i></a> <a class="btn" data-edit="strikethrough"
							title="" data-original-title="Strikethrough"><i
							class="icon-strikethrough"></i></a> <a class="btn"
							data-edit="underline" title=""
							data-original-title="Underline (Ctrl/Cmd+U)"><i
							class="icon-underline"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="insertunorderedlist" title=""
							data-original-title="Bullet list"><i class="icon-list-ul"></i></a>
						<a class="btn" data-edit="insertorderedlist" title=""
							data-original-title="Number list"><i class="icon-list-ol"></i></a>
						<a class="btn" data-edit="outdent" title=""
							data-original-title="Reduce indent (Shift+Tab)"><i
							class="icon-indent-left"></i></a> <a class="btn" data-edit="indent"
							title="" data-original-title="Indent (Tab)"><i
							class="icon-indent-right"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn btn-info" data-edit="justifyleft" title=""
							data-original-title="Align Left (Ctrl/Cmd+L)"><i
							class="icon-align-left"></i></a> <a class="btn"
							data-edit="justifycenter" title=""
							data-original-title="Center (Ctrl/Cmd+E)"><i
							class="icon-align-center"></i></a> <a class="btn"
							data-edit="justifyright" title=""
							data-original-title="Align Right (Ctrl/Cmd+R)"><i
							class="icon-align-right"></i></a> <a class="btn"
							data-edit="justifyfull" title=""
							data-original-title="Justify (Ctrl/Cmd+J)"><i
							class="icon-align-justify"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
							data-original-title="Hyperlink"><i class="icon-link"></i></a>
						<div class="dropdown-menu input-append">
							<input class="span2" placeholder="URL" type="text"
								data-edit="createLink">
							<button class="btn" type="button">Add</button>
						</div>
						<a class="btn" data-edit="unlink" title=""
							data-original-title="Remove Hyperlink"><i class="icon-cut"></i></a>
					</div>
	
					<div class="btn-group">
						<a class="btn" title="" id="pictureBtn"
							data-original-title="Insert picture (or just drag &amp; drop)"><i
							class="icon-picture"></i></a> <input type="file"
							data-role="magic-overlay" data-target="#pictureBtn"
							data-edit="insertImage"
							style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 37px; height: 30px;">
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="undo" title=""
							data-original-title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
						<a class="btn" data-edit="redo" title=""
							data-original-title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
					</div>
					<input type="text" data-edit="inserttext" id="voiceBtn"
						x-webkit-speech="" style="display: none;">
				</div>
				<div id="editor" contenteditable="true">${news.content}</div>
			</div>
	  	</div>
	  	
	  	<input type="button" value="提交" onclick="dosubmit()">
	  </fieldset>
  
  </body>
  
  
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
</html>
