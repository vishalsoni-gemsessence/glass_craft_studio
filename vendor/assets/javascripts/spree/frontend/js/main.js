$(document).ready(function() {








	// ----- SMALLER MENU AND MOBILE -----

	// $(window).scroll(function() {
	// if ($(document).scrollTop() > 100) {
	// 	$('.header_content').addClass('smaller-menu');
	// }
	// else {
	// 	$('.header_content').removeClass('smaller-menu'); }
	// });


	$(window).scroll(function() {
	if ($(document).scrollTop() > 100) {
		$('.header_content').addClass('show');
	}
	else {
		$('.header_content').removeClass('show'); }
	});


	$('.js-nav-link').click(function() {
		$('.mobile-nav, .mobile-nav-bg').removeClass('show');
		$('body').removeClass('no-scroll');
	});


	$('.mobile-nav-bg').click(function() {
		$('.mobile-nav-bg, .mobile-nav').removeClass('show');
		$('body').removeClass('no-scroll');
	});

	$('.show-menu').on('click', function() {
		$('.mobile-nav, .mobile-nav-bg').toggleClass('show');
		$('body').toggleClass('no-scroll');
	});


	$('.navbar-toggler').on('click', function() {
		$('.navbar-toggler').toggleClass('active');
	});
	$('.mobile-nav-bg, .js-nav-link').click(function() {
		$('.navbar-toggler').removeClass('active');
	});

	// ----- END SMALLER MENU AND MOBILE -----








	// ----- INPUT NUMBER -----

	var upURL = "/assets/spree/frontend/tpl/icon-plus.png"	;
	var downURL = "/assets/spree/frontend/tpl/icon-minus.png";


	$(function(){
		$('input.number').each(function(){
			$(this).after('<img src="'+upURL+'" class="arrow up"></img>').before('<img src="'+downURL+'" class="arrow down"></img>')
		});
		$('.number-wrap').on('click', '.arrow', function(e){
			var input = $(this).parents('div.number-wrap').children('input');
			var value = parseInt(input.attr('value'));
			var min = parseInt(input.attr('min'));
			var max = parseInt(input.attr('max'));
			if ($(this).hasClass('up')) { var op = +1;} else {var op = -1;}
			if (!(min==value && op == -1) && !(max==value && op == +1)) {
					input.attr('value', value + op)
			}
		})
	});

	// ----- END INPUT NUMBER -----







// SMOOTH SCROLL TO ANCHOR
	$('.link-smooth').click(function(event) {
		$('body, html').animate({
			scrollTop: $( $.attr(this, 'href') ).offset().top-50
		}, 900);
		event.preventDefault();
	});










	$('#jsInteriorCarousel').flexslider({
		animation: "slide",
		controlNav: false,
		animationLoop: false,
		slideshow: false,
		itemWidth: 210,
		itemMargin: 5,
		asNavFor: '#jsInteriorSlider'
	});

	$('#jsInteriorSlider').flexslider({
		animation: "slide",
		controlNav: false,
		animationLoop: false,
		slideshow: false,
		sync: "#jsInteriorCarousel",
		start: function(slider){
			$('body').removeClass('loading');
		}
	});








/*
	// ACTIVE MENU ITEM
	var lastId,
		topMenu = $(".js-collapse-activeitem"),
		topMenuHeight = topMenu.outerHeight()+15,
		menuItems = topMenu.find("a"),
		scrollItems = menuItems.map(function(){
			var item = $($(this).attr("href"));
			if (item.length) { return item; }
		});


	menuItems.click(function(e){
		var href = $(this).attr("href"),
				offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+50;
		$('html, body').stop().animate({
				scrollTop: offsetTop
		}, 900);
		e.preventDefault();
	});

	$(window).scroll(function(){
		 var fromTop = $(this).scrollTop()+topMenuHeight;

		 var cur = scrollItems.map(function(){
			 if ($(this).offset().top < fromTop)
				 return this;
		 });
		 cur = cur[cur.length-1];
		 var id = cur && cur.length ? cur[0].id : "";

		 if (lastId !== id) {
				 lastId = id;
				 menuItems
					 .parent().removeClass("active")
					 .end().filter("[href='#"+id+"']").parent().addClass("active");
		 }
	});


*/








	// // dropdown-menu hover show
	// $('ul.navbar-nav li.dropdown').hover(function() {
	// 	$(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn(100);
	// }, function() {
	// 	$(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut(100);
	// });


	// $('body').on('mouseenter mouseleave','.dropdown',function(e){
	// 	var _d=$(e.target).closest('.dropdown');_d.addClass('show');
	// 	setTimeout(function(){
	// 		_d[_d.is(':hover')?'addClass':'removeClass']('show');
	// 	},300);
	// });




	// $(".js-dropdown-link").hover(
	// 	function () {
	// 		$(".js-dropdown-box").addClass("open");
	// 	},
	// 	function () {
	// 		$(".js-dropdown-box").removeClass("open");
	// 	}
	// );


	// $(".js-dropdown").hover(
	// 	function () {
	// 		$(this).addClass("show");
	// 		$(".js-dropdown-menu").addClass("show");
	// 	},
	// 	function () {
	// 		$(this).removeClass("show");
	// 		$(".js-dropdown-menu").removeClass("show");
	// 	}
	// );




	// owl-carousel productCard-carousel
$(document).ready(function(){
	var owl1 = $('.js-owl-home');
	owl1.owlCarousel({
			loop:true,
			margin:10,
			smartSpeed:600,
			nav:true,
			items:1,
			responsive:{
					0:{
							autoplay:true,
							autoplayTimeout:2000
					},
					768:{
							autoplay:false
					}
			}
	});

})


	$('.js-home-owl-prev-1').click(function(event) {
		event.preventDefault();
		owl1.trigger('prev.owl.carousel');
	});
	$('.js-home-owl-next-1').click(function(event) {
		event.preventDefault();
		owl1.trigger('next.owl.carousel');
	});





	// var owl2 = $('.js-partners-carousel');
	// owl2.owlCarousel({
	// 		loop:true,
	// 		margin:10,
	// 		nav:true,
	// 		responsive:{
	// 				0:{
	// 						autoplay:true,
	// 						autoplayTimeout:2000,
	// 						items:1
	// 				},
	// 				545:{
	// 						autoplay:true,
	// 						autoplayTimeout:2000,
	// 						items:2
	// 				},
	// 				768:{
	// 						autoplay:true,
	// 						autoplayTimeout:2000,
	// 						items:3
	// 				},
	// 				991:{
	// 						autoplay:true,
	// 						autoplayTimeout:2000,
	// 						items:4
	// 				},
	// 				1200:{
	// 						autoplay:false,
	// 						items:6
	// 				}
	// 		}
	// });








	// parallax background / ! css >> background-position: center 0px !!
	$(window).scroll(function () {

		// hero
		$(".hero").css("background-position","center " + ($(this).scrollTop() / -6) + "px");

	});








	/*
		Background image. Find some image and insert it as background to some element
	*/
	// $(".js-bg").each(function() {
	// 	// get element
	// 	var element = $(this);

	// 	// get image
	// 	var img = element.find(".js-bg-img");

	// 	// get image source
	// 	var src = img.attr("src");


	// 	// insert background image
	// 	element.css({
	// 		"background-image": "url(" + src + ")"
	// 	});

	// 	// hide real image
	// 	img.hide();

	// });


	// // toggle class on click
	// $("[data-toggle-class]").click(function(event) {

	// 	event.preventDefault();

	// 	// if target is defined
	// 	if ( $(this).data("target") ) {

	// 		var targetIdOrClass = $(this).data("target");

	// 	} else {
	// 		// if target is not defined - set this as target
	// 		var targetIdOrClass = $(this);

	// 	};


	// 	var target = $(targetIdOrClass);

	// 	// console.log(target)

	// 	var targetToggleClass = $(this).data("toggle-class");

	// 	target.toggleClass(targetToggleClass);

	// });



	// // toggle class on click in this element (self)
	// $("[data-toggle-class-this]").click(function(event) {

	// 	event.preventDefault();

	// 	var target = $(this);
	// 	var targetToggleClass = $(this).data("toggle-class-this");

	// 	console.log(targetToggleClass)

	// 	target.toggleClass(targetToggleClass);

	// });




	/*
		On-off switch - checkbox-slider
	*/
	$(".js-switch").each(function() {

		$(this).click(function() {
			$(this).toggleClass("on");
		})

	});





	/*
		Check/Uncheck all checkboxes on click
	*/
	// $(".js-check-all").click(function(){
	// 	$(this).closest('.js-checkboxes').find( 'input[type="checkbox"]').prop('checked', true);
	// });

	// $(".js-uncheck-all").click(function(){
	// 	$(this).closest('.js-checkboxes').find( 'input[type="checkbox"]').prop('checked', false);
	// });















});
