//magic line
/*Activate default tab contents*/
// var leftPos, newWidth, $magicLine;

// window.onload = function(){

//    (function() {

//    	$('.pre-loader').fadeOut();
// 	$('.fleet-tab .tab-menu ul').append("<li id='magic-line'></li>");
// 	$magicLine = $('#magic-line');
// 	$magicLine.width($('.fleet-tab .tab-menu ul .active').width())
// 		.css('left', $('.fleet-tab .tab-menu ul .active').position().left)
// 		.data('origLeft', $magicLine.position().left)
// 		.data('origWidth', $magicLine.width());

//    })();

// };

$(function(){


	$('.review-slider .owl-carousel').owlCarousel({
	    loop:false,
	    margin:15,
	    nav:false,
	    smartSpeed:1000,
	    // autoplay:true,
	    // autoplayTimeout:7000,
	    responsive:{
	        0:{
	            items:1
	        },
	        576:{
	            items:2
	        },
	        768:{
	            items:3
	        },
	        992:{
	            items:4
	        }
	    }
	})

	$('.cryptocurrencies .owl-carousel').owlCarousel({
	    loop:true,
	    margin:20,
	    nav:false,
	    dots:false,
	    smartSpeed:1000,
	    autoplay:true,
	    autoplayTimeout:5000,
	    mouseDrag:false,
	    touchDrag:false,
	    pullDrag:false,
	    freeDrag:false,
	    center:true,
	    responsive:{
	        0:{
	            items:4,
	            center:false,
	        },
	        576:{
	            items:6,
	            center:false,
	        },
	        768:{
	            items:11
	        },
	        992:{
	            items:11
	        }
	    }
	})

	var leftPos, newWidth, $magicLine;

	$('.pre-loader').fadeOut();


	$('#nav-icon1').click(function(){
		$(this).toggleClass('open');
	});

	// $('.booking-form .tab-btns ul li a').click(function(event) {
	// 	event.preventDefault();
	// 	let tab_id = $(this).attr('href');
	// 	$('.booking-form .tab-btns ul li a').removeClass('active');
	// 	$(this).addClass('active');
	// 	if(tab_id == "#point2point"){
	// 		$('.bookinkg-fields .input-field.dropoff-point').hide();
	// 		$('.bookinkg-fields .input-field.duration').css('display','flex');
	// 	}else{
	// 		$('.bookinkg-fields .input-field.dropoff-point').css('display','flex');
	// 		$('.bookinkg-fields .input-field.duration').hide();
	// 	}
	// });
	$('.toggle-options .check-switch input').click(function(event) {
		if($(this).prop("checked") == true){
            $('.form-wrapper .more-options').slideDown();
        }
        else if($(this).prop("checked") == false){
            $('.form-wrapper .more-options').slideUp();
        }

	});

	$('.switch-search.check-switch input').click(function(event) {
		if($(this).prop("checked") == true){
            $('.search-form .return-date').slideDown();
        }
        else if($(this).prop("checked") == false){
            $('.search-form .return-date').slideUp();
        }

	});

	$('[data-toggle="tooltip"]').tooltip();

	$('.hourly-booking .custom-check input').click(function(){
	    if($(this).prop("checked") == true){
            $('.bookinkg-fields .input-field.hour').css('display','flex');
        }
        else if($(this).prop("checked") == false){
            $('.bookinkg-fields .input-field.hour').css('display','none');
        }
	});
	
	 // ADD NEW ON 10-09-2025
	 
	 
	// var today = new Date();
    //var minDate = today.setDate(today.getDate() + 3);
	//$('#pickup_date_label').datetimepicker({
	//	timepicker:false,
	//	format:'d-M-Y',
	//	minDate: minDate,
	//	onChangeDateTime:function(dp,$input){
	//		$('#pickup_date') .val($input.val());
	//	}
	//});

//	$('#booking_enquiry_pickup_date_label').datetimepicker({
	//	timepicker:false,
	//	format:'d-M-Y',
	   // minDate: minDate,
	//	onChangeDateTime:function(dp,$input){
		//	$('#booking_enquiry_pickup_date') .val($input.val());
	//	}
	//});
	 
	 
	 
	 
	 
    var today = new Date();
var minDate = today.setDate(today.getDate() + 3);

$('#pickup_date_label').datetimepicker({
    timepicker: false,
    format: 'd-M-Y',
    minDate: minDate,
    beforeShowDay: function (date) {
        var d = date.getDate();
        var m = date.getMonth() + 1; // month is 0-based
        var y = date.getFullYear();

        // Block Oct 16–22, 2025
        if (y === 2025 && m === 10 && d >= 16 && d <= 22) {
            return [false, "disabled-date", "Fully booked"]; 
        }

        return [true, ""];
    },
    onChangeDateTime: function (dp, $input) {
        $('#pickup_date').val($input.val());
    }
});

$('#booking_enquiry_pickup_date_label').datetimepicker({
    timepicker: false,
    format: 'd-M-Y',
    minDate: minDate,
    beforeShowDay: function (date) {
        var d = date.getDate();
        var m = date.getMonth() + 1;
        var y = date.getFullYear();

        if (y === 2025 && m === 10 && d >= 1 && d <= 15) {
            return [false, "disabled-date", "Fully booked"];
        }

        return [true, ""];
    },
    onChangeDateTime: function (dp, $input) {
        $('#booking_enquiry_pickup_date').val($input.val());
    }
});

	
	
	//END NEW ON 10-09-2025

	$('#end_to_end_pickup_date_label').datetimepicker({
		timepicker:false,
		format:'d-M-Y',
		minDate: minDate,
		onChangeDateTime:function(dp,$input){
			$('#end_to_end_pickup_date') .val($input.val());
		}
	});

	$('#hourly_booking_pickup_date_label').datetimepicker({
		timepicker:false,
		format:'d-M-Y',
	    minDate: minDate,
		onChangeDateTime:function(dp,$input){
			$('#hourly_booking_pickup_date') .val($input.val());
		}
	});
	// $('#pickup_time').datetimepicker({
	// 	datepicker:false,
	// 	format:'H:i'
	// });

	$('#return_date').datetimepicker({
		timepicker:false,
		format:'m/d/Y',
		minDate: "1",
	});
	$('#return_time').datetimepicker({
		datepicker:false,
		format:'H:i'
	});

	$('.picker-date').datetimepicker({
		timepicker:false,
		format:'d/m/Y',
		minDate: "1",
	});

	$('.picker-time').datetimepicker({
		datepicker:false,
		format:'H:i'
	});

	$(".collapse").on('show.bs.collapse', function(){
	   $(this).parent('.card').addClass('active');
	});

	$(".collapse").on('hide.bs.collapse', function(){
	   $(this).parent('.card').removeClass('active');
	});

	$('.select2-wrap .city-dropdown ul li').click(function(event) {
		let value = $(this).attr('value');
		let city = $(this).text();
		$(this).parents('.select2-wrap').find('input').val(value);
		$(this).parents('.select2-wrap').find('.selected-value').text(city);
	});


	$('.select-placeholder').click(function(event) {
		$(this).next('.select2-wrap').toggle();
	});

	$(document).click(function(e) {
      var target = e.target;
      if (!$(target).is('.select2-city') && !$(target).parents().is('.select2-city')) {
       $('.select2-wrap').hide();
      }
    });

    // Fleet tab
     $('.fleet-tab .tab-menu ul li').click(function(){
        $('.fleet-tab .tab-menu ul li').removeClass('active');
        $(this).addClass('active');
        var tabid = $(this).data('tag');
        $('.fleet-tab-content .tab-wrapper').removeClass('show').addClass('hide');
        $('#'+tabid + '.' +tabid).addClass('show').removeClass('hide');
    });

     $('.select-passengers') .click(function(event) {
     	event.stopPropagation();
     	$('.add-passengers') .slideToggle(300);
     	$('.pickup-time .dropdown-menu').removeClass('show');
     });
     $('.add-passengers') .click(function(event) {
     	event.stopPropagation();
     });
	$(document).click(function(){
	    $(".add-passengers").slideUp(300);
	});
	$('.add-child-seat #add-child-seat') .click(function(event) {
		event.stopPropagation();
		if ($(this).is(":checked")) {
            $(".add-passengers").slideDown(300);
        } else {
            $(".add-passengers").slideUp(300);
        }
	});
    // Increase and decrease value
    var minVal = 1, maxVal = 6;

	$(".increaseQty").on('click', function(){
			var $parentElm = $(this).parents(".qtySelector");
			var $totalVal = $(".select-passengers");
			$(this).addClass("clicked");
			setTimeout(function(){
				$(".clicked").removeClass("clicked");
			},100);
			var value = $parentElm.find(".qtyValue").val();
			if (value < maxVal) {
				value++;
			}
			$parentElm.find(".qtyValue").val(value);
			$totalVal.find(".TotalVal_p").text(value);
	});

		$(".decreaseQty").on('click', function(){
			var $parentElm = $(this).parents(".qtySelector");
			var $totalVal = $(".select-passengers");
			$(this).addClass("clicked");
			setTimeout(function(){
				$(".clicked").removeClass("clicked");
			},100);
			var value = $parentElm.find(".qtyValue").val();
			if (value > 1) {
				value--;
			}
			$parentElm.find(".qtyValue").val(value);
			$totalVal.find(".TotalVal_p").text(value);
		});


		//citylist switch

		$('.city-listing .select2-city') .hide();

	     $('.city-listing .tab-btn .search_icon') .click(function(event) {
	        $('.city-listing .tab-btn a') .removeClass('active');
	        $(this) .addClass('active');
	        $('.city-listing .select2-city') .slideDown(300);
	        $('.about-city-service-detail') .css({'margin-top': '0'});
	     });
	     $('.city-listing .tab-btn .globe_icon') .click(function(event) {
	        $('.city-listing .tab-btn a') .removeClass('active');
	        $(this) .addClass('active');
	        $('.about-city-service-detail') .css({'margin-top': '-50px'});
	        $('.city-listing .select2-city') .slideUp(300);
	     });

	     $('.cookies_footer_right .accept') .click(function(e) {
	     	e.preventDefault();
	     	$('.cookies_section') .hide();
	     });

	    //switch source and destination
	    $('.form-wrapper .switch-fields .switch-icon').click(function(event) {
	    	$('.form-wrapper .switch-fields').toggleClass('reverse-sd');
	    	if($('#ride_from').val() == "airport-terminal"){
				$('#ride_from').val("hotel");
			}
	    	else{
				$('#ride_from').val("airport-terminal");
			}
	    });

	    $('.update-form') .click(function(e) {
	    	$('.search-booking .search-right') .slideToggle();
	    });

	    $('.regster-click') .click(function(e) {
	    	$('#login-modal').modal('hide');
	    	$('#register-modal').modal('show');
	    	$('body') .addClass('modal-open1');
	    });

	    $('.login-click') .click(function(e) {
	    	$('#login-modal').modal('show');
	    	$('#register-modal').modal('hide');
	    	$('body') .addClass('modal-open1');
	    });
	    $('.forgotpassword') .click(function(e) {
	    	$('#login-modal').modal('hide');
	    	$('#forgotpass-modal').modal('show');
	    	$('body') .addClass('modal-open1');
	    });

		$('#country_registration_dialing_code_div,#country_dialing_code_div') .click(function(event) {
	     	event.stopPropagation();
	     });
		$(document).click(function(){
		    $("#country_registration_dialing_code_list,#country_dialing_code_list").hide();
		});


		//time picker
		$(document).on('click', '.pickup-time .dropdown-menu', function (e) {
		  e.stopPropagation();
		});

		function timeChangeHandler(e){
			var hour = $('.pickup-time #select_hour').val();
			var minute = $('.pickup-time #select_minute').val();
			var time = hour+':'+minute;
			$(e).parents('.pickup-time').find('#pickup_time').val(time);
		}

		function timeChangeHandler2(e){
			var hour = $('.pickup-time #select_hour2').val();
			var minute = $('.pickup-time #select_minute2').val();
			var time = hour+':'+minute;
			$(e).parents('.pickup-time').find('#end_to_end_pickup_time').val(time);
		}

		function timeChangeHandler3(e){
			var hour = $('.pickup-time #select_hour3').val();
			var minute = $('.pickup-time #select_minute3').val();
			var time = hour+':'+minute;
			$(e).parents('.pickup-time').find('#hourly_booking_pickup_time').val(time);
		}

		function timeChangeHandler4(e){
			var hour = $('.pickup-time #select_hour4').val();
			var minute = $('.pickup-time #select_minute4').val();
			var time = hour+':'+minute;
			$(e).parents('.pickup-time').find('#pickup_time4').val(time);
		}

		$('.pickup-time #select_hour').change(function(event) {
			timeChangeHandler(this);
		});
		$('.pickup-time #select_minute').change(function(event) {
			timeChangeHandler(this);
			$(this).parents('.pickup-time .dropdown-menu').removeClass('show');
		});

		$('.pickup-time #select_hour2').change(function(event) {
			timeChangeHandler2(this);
		});
		$('.pickup-time #select_minute2').change(function(event) {
			timeChangeHandler2(this);
			$(this).parents('.pickup-time .dropdown-menu').removeClass('show');
		});

		$('.pickup-time #select_hour3').change(function(event) {
			timeChangeHandler3(this);
		});
		$('.pickup-time #select_minute3').change(function(event) {
			timeChangeHandler3(this);
			$(this).parents('.pickup-time .dropdown-menu').removeClass('show');
		});

		$('.pickup-time #select_hour4').change(function(event) {
			timeChangeHandler4(this);
		});
		$('.pickup-time #select_minute4').change(function(event) {
			timeChangeHandler4(this);
			$(this).parents('.pickup-time .dropdown-menu').removeClass('show');
		});

		$(document).on('keyup change','#ride_source_location,#ride_destination_location,.cls_keypress',function(e){
            var val = $(this).val();
            if(val != ""){
                $(this).next('.close-search').show();
            }else{
                $(this).next('.close-search').hide();
            }
        });

        $(document).click(function(e) {
          var target = e.target;
          if (!$(target).is('#airport_terminal_suggestion_list,#ride_source_location')) {
           $('#airport_terminal_suggestion_list').hide();
          }
        });

        $(".header-inner .manu-wrap .login-register ul li a.mobile_dot,.mobile-header-hamberger") .click(function(event) {
        	$('.mobile_navigation') .show();
	    });
       $(".close_mobile_navigation,.mobile_menu li a") .click(function(event) {
        $('.mobile_navigation') .hide();
      });

	// Economy tab
   	size_li = $(".tab-main-economy .tab-economy").length;
    x=1;
    $('.tab-main-economy .tab-economy:lt('+x+')').show();
    $('#showEconomy').click(function () {
        x= (x+3 <= size_li) ? x+3 : size_li;
        $('.tab-main-economy .tab-economy:lt('+x+')').show();
         $('#lessEconomy').show();
        if(x == size_li){
            $('#showEconomy').hide();
        }
    });

    $('#lessEconomy').click(function () {
        x=(x-3<0) ? 1 : x-3;
        $('.tab-main-economy .tab-economy').not(':lt('+x+')').hide();
        $('#showEconomy').show();
         $('#lessEconomy').show();
        if(x == 1){
            $('#lessEconomy').hide();
        }
    });

	// Business tab
    size_li2 = $(".tab-main-business .tab-business").length;
    x2=1;
    $('.tab-main-business .tab-business:lt('+x2+')').show();
    $('#showBusiness').click(function () {
        x2= (x2+3 <= size_li2) ? x2+3 : size_li2;
        $('.tab-main-business .tab-business:lt('+x2+')').show();
         $('#lessBusiness').show();
        if(x2 == size_li2){
            $('#showBusiness').hide();
        }
    });
    $('#lessBusiness').click(function () {
        x2=(x2-3<0) ? 1 : x2-3;
        $('.tab-main-business .tab-business').not(':lt('+x2+')').hide();
        $('#showBusiness').show();
         $('#lessBusiness').show();
        if(x2 == 1){
            $('#lessBusiness').hide();
        }
    });

    // Luxury tab
    size_li3 = $(".tab-main-luxury .tab-luxury").length;
    x3=1;
    $('.tab-main-luxury .tab-luxury:lt('+x3+')').show();
    $('#showLuxury').click(function () {
        x3= (x3+3 <= size_li3) ? x3+3 : size_li3;
        $('.tab-main-luxury .tab-luxury:lt('+x3+')').show();
         $('#showLess_economy').show();
        if(x3 == size_li3){
            $('#showLuxury').hide();
        }
    });

     $('#lessLuxury').click(function () {
        x3=(x3-3<0) ? 1 : x3-3;
        $('.tab-main-luxury .tab-luxury').not(':lt('+x3+')').hide();
        $('#showLuxury').show();
         $('#lessLuxury').show();
        if(x3 == 1){
            $('#lessLuxury').hide();
        }
    });

	//added on 21-06-2023
	$(window).scroll(function(){
		if ($(window).scrollTop() >= 100) {
			$('.header').addClass('fixed-header');
		}
		else {
			$('.header').removeClass('fixed-header');
		}
	});
// Iqbal Sir

$('.offer-slider').owlCarousel({
    loop:true,
    margin:21,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:3
        }
    }
  })

})
