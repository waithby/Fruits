import $ from 'jquery';
$(function() {
	$('.index-posit').click(function(){
		$('.zhezhao').slideToggle("slow");
	})
	$('.shadow').click(function() {
		$('.zhezhao').slideUp("slow");
	});
	$('.list_city').children().click(function(){
		console.log($(this).html());
			$('.index-posit').html($(this).html()+'<span class="mui-icon mui-icon-arrowdown"></span>');
			$('.zhezhao').slideUp("slow");
		})
	$(window).scroll(function(){
		if ($(document).scrollTop()>=600) {
			$('.go_top').css({"display":"block"});
		} else{
			$('.go_top').css({"display":"none"});
		}
	})
	$('.go_top').click(function(){
		$('html,body').animate({scrollTop:0},300);
	})
})