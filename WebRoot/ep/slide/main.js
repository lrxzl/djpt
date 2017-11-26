// JavaScript Document

$(function() {
		   
		   
	  // Settings
    var viewportTop   = 80,
          scrollTime      = 600,
          openTime      = 600,
          completeTime  = 1200,
		  scrollElement = "html,body";
    // Initialize waypoints
    $("#wrapper > div").waypoint({ offset: viewportTop });
    // Detect iOS and Android*/
    if((!navigator.userAgent.match(/iPhone/i)) && (!navigator.userAgent.match(/iPod/i)) && (!navigator.userAgent.match(/iPad/i)) && (!navigator.userAgent.match(/Android/i))) {
        // Sticky nav for desktop
        $("#nav").stickyPanel();
        // Do stuff when waypoints are reached
      $("body").delegate("#wrapper > div", "waypoint.reached", function (event, direction) {
      var $active = $(this);
      if (direction === 'up') {
        $active = $active.prev();
      }
      if (!$active.length) { $active.end(); }
      $(".section-active").removeClass("section-active");
      $active.addClass("section-active");
      $(".selected").removeClass("selected");
      $("a[href=#"+$active.attr("id")+"]").addClass("selected");
    });
  }

  
$('#slider').nivoSlider({
        effect:'sliceDown', // Specify sets like: 'fold,fade,sliceDown'
        slices:15, // For slice animations
        boxCols: 8, // For box animations
        boxRows: 4, // For box animations
        animSpeed:500, // Slide transition speed
        pauseTime:3000, // How long each slide will show
        startSlide:0, // Set starting Slide (0 index)
        directionNav:true, // Next & Prev navigation
        directionNavHide:true, // Only show on hover
        controlNav:true, // 1,2,3... navigation
        controlNavThumbs:false, // Use thumbnails for Control Nav
        controlNavThumbsFromRel:false, // Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', // Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
        keyboardNav:true, // Use left & right arrows
        pauseOnHover:true, // Stop animation while hovering
        manualAdvance:false, // Force manual transitions
        captionOpacity:0.75, // Universal caption opacity
        prevText: 'Anterior', // Prev directionNav text
        nextText: 'Siguiente', // Next directionNav text
        beforeChange: function(){}, // Triggers before a slide transition
        afterChange: function(){}, // Triggers after a slide transition
        slideshowEnd: function(){}, // Triggers after all slides have been shown
        lastSlide: function(){}, // Triggers when last slide is shown
        afterLoad: function(){} // Triggers when slider has loaded
    });

$("a[rel='gallery1']").colorbox({width:"80%"});
$("a[rel='gallery2']").colorbox({width:"80%"});
$("a[rel='gallery3']").colorbox({width:"80%"});
$("a[rel='gallery4']").colorbox({width:"80%"});


$(".scrollable").scrollable();

$(".items img").click(function() {

	// see if same thumb is being clicked
	if ($(this).hasClass("active")) { return; }

	// calclulate large image's URL based on the thumbnail URL (flickr specific)
	var url = $(this).attr("src").replace("_mini", "");

	// get handle to element that wraps the image and make it semi-transparent
	var wrap = $("#image_wrap").fadeTo("medium", 0.5);

	// the large image from www.flickr.com
	var img = new Image();


	// call this function after it's loaded
	img.onload = function() {

		// make wrapper fully visible
		wrap.fadeTo("fast", 1);

		// change the image
		wrap.find("img").attr("src", url);

	};

	// begin loading the image from www.flickr.com
	img.src = url;

	// activate item
	$(".items img").removeClass("active");
	$(this).addClass("active");

// when page loads simulate a "click" on the first image
}).filter(":first").click();

$('input:text[name=name]').focus(function() {
		var namevar=$(this).val();
		if(namevar=='Tu nombre'){
    		$(this).val('');
		}
	});

$('input:text[name=name]').focusout(function() {
		var namevar=$(this).val();
		if(namevar==''){
	    	$(this).val('Tu nombre');
		}
	});

$('input:text[name=tel]').focus(function() {
		var telvar=$(this).val();
		if(telvar=='Teléfono'){
    		$(this).val('');
		}
	});

$('input:text[name=tel]').focusout(function() {
		var telvar=$(this).val();
		if(telvar==''){
	    	$(this).val('Teléfono');
		}
	});

$('input:text[name=email1]').focus(function() {
		var email1var=$(this).val();
		if(email1var=='Dirección email'){
    		$(this).val('');
		}
	});

$('input:text[name=email1]').focusout(function() {
		var email1var=$(this).val();
		if(email1var==''){
	    	$(this).val('Dirección email');
		}
	});

$('input:text[name=email2]').focus(function() {
		var email2var=$(this).val();
		if(email2var=='Confirmar email'){
    		$(this).val('');
		}
	});

$('input:text[name=email2]').focusout(function() {
		var email2var=$(this).val();
		if(email2var==''){
	    	$(this).val('Confirmar email');
		}
	});

$('#mensaje').focus(function() {
		var mensajevar=$(this).val();
		if(mensajevar=='Escribe el motivo de tu consulta'){
    		$(this).val('');
		}
	});

$('#mensaje').focusout(function() {
		var mensajevar=$(this).val();
		if(mensajevar==''){
	    	$(this).val('Escribe el motivo de tu consulta');
		}
	});


$('#send').click(function() {
		var name=$('input:text[name=name]').val();
		var tel=$('input:text[name=tel]').val();
		var email1=$('input:text[name=email1]').val();
		var email2=$('input:text[name=email2]').val();
		var mensaje=$('#mensaje').val();
		$.ajax({
        	type: 'POST',
        	url: 'ajax/email.php',
			cache: false,
			dataType:'json',
			data: 'name='+name+'&tel='+tel+'&email1='+email1+'&email2='+email2+'&mensaje='+mensaje,
        	beforeSend:function(){
				
			},		
			success: function(datos){
				if(datos.result=='OK'){
					$('#result').html('<span style="color:#999900">Mensaje enviado correctamente</span>');
						$('input:text[name=name]').val('');
						$('input:text[name=tel]').val('');
						$('input:text[name=email1]').val('');
						$('input:text[name=email2]').val('');
						$('#mensaje').val('');
				}else{
					$('#result').html('<span style="color:#A65200">'+datos.error+'</span>');
				}
	   		}
		});
		return false;
	});

   // Smooth scrolling for internal links
	$("a[href^='#']").click(function (event) {
		event.preventDefault();
		var $this   = $(this),
		    target  = this.hash,
		    $target = $(target);
		$(scrollElement).stop().animate({
			"scrollTop": $target.offset().top
		}, scrollTime, "swing", function () {
			window.location.hash = target;
		});
	});

  
});
