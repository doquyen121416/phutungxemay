$(function() {
	$m = $('nav#menu').html();
	$('nav#menu_mobi').append($m);
	$('nav#menu_mobi .search').addClass('search_mobi').removeClass('search');
	$('.hien_menu').click(function(){
		$('nav#menu_mobi').css({height: "auto"});
	});
	$('.user .fa-user-plus').toggle(function(){
		$('.user ul').slideDown(300);
	},function(){
		$('.user ul').slideUp(300);
	});

	$('nav#menu_mobi').mmenu({
		extensions	: [ 'effect-slide-menu', 'pageshadow' ],
		searchfield	: true,
		counters	: true,
		navbar 		: {
			title		: 'Menu'
		},
		navbars		: [
		{
			position	: 'top',
			content		: [ 'searchfield' ]
		}, {
			position	: 'top',
			content		: [
			'prev',
			'title',
			'close'
			]
		}, {
			position	: 'bottom',
			content		: [
			'<a>Online : 16</a>',
			'<a>Tổng : 185107</a>'
			]
		}
		]
	});
});


$(document).ready(function(){
	$('#slider_slick').slick({
		  	//vertical:true,Chay dọc
			//fade: true,//Hiệu ứng fade của slider
			//slidesPerRow: 2,
			//cssEase: 'linear',//Chạy đều
		  	//lazyLoad: 'progressive',
        	infinite: true,//Lặp lại
        	accessibility:true,
		  	slidesToShow: 1,    //Số item hiển thị
		  	slidesToScroll: 1, //Số item cuộn khi chạy
		  	autoplay:true,  //Tự động chạy
			autoplaySpeed:3000,  //Tốc độ chạy
			speed:1000,//Tốc độ chuyển slider
			arrows:true, //Hiển thị mũi tên
			centerMode:false,  //item nằm giữa
			dots:false,  //Hiển thị dấu chấm
			draggable:true,  //Kích hoạt tính năng kéo chuột
			mobileFirst:true,
			pauseOnHover:true,
			//variableWidth: true//Không fix kích thước
		});
});

//Thêm alt cho hình ảnh
$(document).ready(function(e) {
	$('img').each(function(index, element) {
		if(!$(this).attr('alt') || $(this).attr('alt')=='')
		{
			$(this).attr('alt','PHỤ TÙNG XE MÁY HONDA CHÍNH HÃNG');
		}
	});
});


 //Tim kiem
 function doEnter(evt){
 	var key;
 	if(evt.keyCode == 13 || evt.which == 13){
 		onSearch(evt);
 	}
 }
 function onSearch(evt) {			

 	var keyword = document.getElementById("keyword").value;
 	if(keyword=='' || keyword=='Nhập từ khóa tìm kiếm...')
 	{
 		alert('Bạn chưa nhập từ khóa tìm kiếm');
 	}
 	else{
 		location.href = "tim-kiem.html&keyword="+keyword;
 		loadPage(document.location);			
 	}
 }



 $(document).ready(function(){
 	$('#mod_danhmuc_mb').slick({
 		dots: false,
 		infinite: true,
 		speed: 300,
	  autoplay:true,  //Tự động chạy
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  draggable:true,
	  centerMode:false,  //item nằm giữa
	  responsive: [
	  {
	  	breakpoint: 668,
	  	settings: {
	  		slidesToShow: 3,
	  		slidesToScroll: 1,
	  		infinite: true
	  	}
	  },
	  {
	  	breakpoint: 481,
	  	settings: {
	  		slidesToShow: 2,
	  		slidesToScroll: 1
	  	}
	  },
	  {
	  	breakpoint: 321,
	  	settings: {
	  		slidesToShow: 1,
	  		slidesToScroll: 1
	  	}
	  }
	  ]
	});
 });

 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'UA-122964959-1');
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'UA-123013379-1');



 $(document).ready(function() { 
		//Hover vào menu xổ xuống
		/*
		$(".menu ul li").hover(function(){
			$(this).find('ul:first').css({visibility: "visible",display: "none"}).show(300); 
			},function(){ 
			$(this).find('ul:first').css({visibility: "hidden"});
			}); 
		$(".menu ul li").hover(function(){
				$(this).find('>a').addClass('active2'); 
			},function(){ 
				$(this).find('>a').removeClass('active2'); 
			}); */

		//Click vào danh mục xổ xuống
		/*$("#danhmuc > ul > li > a").click(function(){
			if($(this).parents('li').children('ul').find('li').length>0)
			{
				$("#danhmuc ul li ul").hide(300);
				
				if($(this).hasClass('active'))
				{
					$("#danhmuc ul li a").removeClass('active');
					$(this).parents('li').find('ul:first').hide(300); 
					$(this).removeClass('active');
				}
				else
				{
					$("#danhmuc ul li a").removeClass('active');
					$(this).parents('li').find('ul:first').show(300); 
					$(this).addClass('active');
				}
				return false;
			}
		});*/
	});



 $(document).ready(function(){
 	$('.ds_spnb').slick({
		  	//vertical:true,Chay dọc
			//fade: true,//Hiệu ứng fade của slider
			//slidesPerRow: 2,
			//cssEase: 'linear',//Chạy đều
		  	//lazyLoad: 'progressive',
        	infinite: true,//Lặp lại
        	accessibility:true,
        	vertical:false,
		  	slidesToShow: 4,    //Số item hiển thị
		  	slidesToScroll: 1, //Số item cuộn khi chạy
		  	autoplay:true,  //Tự động chạy
			autoplaySpeed:3000,  //Tốc độ chạy
			speed:1000,//Tốc độ chuyển slider
			arrows:true, //Hiển thị mũi tên
			centerMode:false,  //item nằm giữa
			dots:false,  //Hiển thị dấu chấm
			responsive: [
			{
				breakpoint: 1024,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 1,
					infinite: true,
					dots: false
				}
			},
			{
				breakpoint: 961,
				settings: {
					fade: false,
					slidesToShow: 3,
					slidesToScroll: 1,
					dots: false
				}
			},
			{
				breakpoint: 460,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1,
					dots: false
				}
			},
			{
				breakpoint: 320,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1,
					dots: false
				}
			}


			]
			//variableWidth: true//Không fix kích thước
		});
 });

 marqueeInit({
 	uniqueid: 'mycrawler2',
 	style: {'width': '100% !important'},
	inc: 5, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast:1,
	neutral: 150,
	savedirection: true,
	random: true
});



 var slideIndex = 1;
 showSlides(slideIndex);

 function plusSlides(n) {
 	showSlides(slideIndex += n);
 }

 function currentSlide(n) {
 	showSlides(slideIndex = n);
 }

 function showSlides(n) {
 	var i;
 	var slides = document.getElementsByClassName("mySlides");
 	var dots = document.getElementsByClassName("demo");
 	var captionText = document.getElementById("caption");
 	if (n > slides.length) {slideIndex = 1}
 		if (n < 1) {slideIndex = slides.length}
 			for (i = 0; i < slides.length; i++) {
 				slides[i].style.display = "none";
 			}
 			for (i = 0; i < dots.length; i++) {
 				dots[i].className = dots[i].className.replace(" active", "");
 			}
 			slides[slideIndex-1].style.display = "block";
 			dots[slideIndex-1].className += " active";
 			captionText.innerHTML = dots[slideIndex-1].alt;
 		};