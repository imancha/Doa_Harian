/* ==============================================
jQuery
=============================================== */
$(document).ready(function () {
	$('body *').awesomeCursor('fa fa-twitter', {
		color: '#FFA500',
		size: '40',
		outline: '#2cb2da',
		flip: 'horizontal'
	});

	/*==== METROMEGA SIDEBAR ====*/
	$('#opensidebar i').hover(function() {
			$('#sidebar').show(0).animate({'right': '0px'});
	});
	$('#sidebar').mouseleave(function() {
			$('#sidebar').animate({'right': '-120px'}, function() {
					$(this).css({'display': 'none'});
			});
	});
	
	$("[href='#']").click(function(e){
		e.preventDefault();
	});
	
	// show, hide navbar
	$(".tile").click(function(){
		$(".navbar").animate({bottom:0},"slow");
	}); 
	$(".home-link").click(function(){
		$(".navbar").animate({bottom:-50},"slow");
	}); 

	// navbar-callapse close on click
	$('.navbar li a').on('click',function(){
		if ( $('.navbar-collapse').hasClass("in") ) {
			$('.navbar-collapse').collapse('hide');
		}
	})

	$("#ascensor").ascensor({		
/*		ascensorMap:[[0,0],
								 [1,0],[2,0],[3,0],[4,0],[5,0],[6,0],
								 [7,0],[8,0],[9,0],[10,0],[11,0],[12,0],
								 [13,0],[14,0],[15,0],[16,0],[17,0],[18,0],
								 [19,0],[20,0],[21,0],[22,0],[23,0],[24,0],
								 [25,0],[26,0]]

		ascensorMap:[[0,0],
								 [0,1],[0,2],[0,3],[0,4],[0,5],[0,6],
								 [0,7],[0,8],[0,9],[0,10],[0,11],[0,12],
								 [0,13],[0,14],[0,15],[0,16],[0,17],[0,18],
								 [0,19],[0,20],[0,21],[0,22],[0,23],[0,24],
								 [0,25],[0,26]]
*/
	})	
});

/* ==============================================
Loading
=============================================== */
$(window).load(function(){
	jQuery('#loading').fadeOut(1000);	
});
