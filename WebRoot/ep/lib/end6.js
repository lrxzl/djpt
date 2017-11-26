
function ieVersion() {
  var rv = -1;
  if (navigator.appName == 'Microsoft Internet Explorer') {
    var ua = navigator.userAgent;
    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if (re.exec(ua) != null)
      rv = parseFloat( RegExp.$1 );
  }
  return rv;
}
var version = ieVersion();

if ((navigator.appName=="Microsoft Internet Explorer") && (version < 7) && readCookie('end6Off') != '1') {
	makeWindow(); 
}


function closeLayer(theobject,makeCook) {
	var makeCook = makeCook;
	document.getElementById(theobject).style.display="none";
	if (makeCook > '0') {
		createCookie('end6Off',1,14400);
	}
}


function createCookie(name,value,minutes) {
	var minutes = minutes;
	if (minutes) {
		var date = new Date();
		date.setTime(date.getTime()+(minutes*60*1000));
		var expires = "; expires="+date.toGMTString();
	} else {
		var expires = "";
	}
	document.cookie = name+"="+value+expires+"; path=/";
}


function readCookie(the_name) {
	var nameEQ = the_name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function makeWindow() {

	bit = '<div id="bigWindow" style="position:absolute;height:2000px;width:100%;background-color:#181818;z-index:990;top:0px;left:0px;opacity:0.9; filter:alpha(opacity=90)"></div>';
	bit += '<div id="iWindow" style="position:relative;width:900px;margin:0px auto;z-index:1000;color:#000000;">';
	bit += '<div style="position:absolute;top:100px;left:50%; margin-left:-325px; width:650px;height:400px;background-image:url(img/end6.jpg);background-color:#fff;font-size:16px; line-height:20px;color:#000; font-family:\"Lucida Grande\", \"Lucida Sans Unicode\", sans-serif">';
	bit += '<div style="border:3px solid #666; padding:15px; width:614px; height:364px;"><div style="text-align:center;">Est&aacute;s utilizando<br /><b>Internet Explorer</b>';
	bit += '<br />&nbsp;<br />Este navegador est&aacute; obsoleto y tiene muchos problemas de seguridad.<br />&nbsp;<br />Para que puedas disfrutar de nuestra p&aacute;gina al 100%<br />te recomendamos que instales alguno de estos navegadores:<br /><table width="614" border="0" cellspacing="0" cellpadding="0" style="margin-top:20px"><tr><td style="text-align:center"><a href="http://www.google.com/chrome?hl=es" title="Chrome" target="_blank"><img src="img/aps/chrome.jpg" alt="Chrome" width="64" height="64" /></a></td><td style="text-align:center"><a href="http://www.opera.com" title="Opera" target="_blank"><img src="img/aps/opera.jpg" alt="Opera" width="64" height="64" /></a></td><td style="text-align:center"><a href="http://www.apple.com/es/safari/" title="Safari" target="_blank"><img src="img/aps/safari.jpg" alt="Safari" width="64" height="64" /></a></td><td style="text-align:center"><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx" title="Internet Explorer 8" target="_blank"><img src="img/aps/ie.jpg" alt="Internet Explorer 8" width="64" height="64" /></a></td><td style="text-align:center"><a href="http://www.mozilla.com" title="Firefox" target="_blank"><img src="img/aps/firefox.jpg" alt="Firefox" width="64" height="64" /></a></td></tr><tr><td  style="text-align:center"><a href="http://www.google.com/chrome?hl=es" style="color:#333" title="Chrome" target="_blank">Chrome</a></td><td style="text-align:center"><a href="http://www.opera.com" style="color:#333" title="Opera" target="_blank">Opera</a></td><td style="text-align:center"><a href="http://www.apple.com/es/safari/" style="color:#333" title="Safari" target="_blank">Safari</a></td><td style="text-align:center"><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx" style="color:#333" title="Internet Explorer 8" target="_blank">Explorer</a></td><td style="text-align:center"><a href="http://www.mozilla.com" style="color:#333" title="Firefox" target="_blank">Firefox</a></td></tr></table><br />Todos son gratuitos y mucho mejores como navegadores.<br />S&oacute;lo se tarda un par de minutos en instalarlos.<br /><br /><a href="#" onclick="closeLayer(\'iWindow\',\'1\');closeLayer(\'bigWindow\',\'1\');return false;" style="font-size:12px; color:#333; ">Cerrar esta ventana</a></div>'
	bit += '</div></div>';
	bit += '</div>';
	
	document.write(bit);
	
}