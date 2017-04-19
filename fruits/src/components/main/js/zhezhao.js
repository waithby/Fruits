import $ from 'jquery';
$(function() {
	$('.index-posit').click(function(){
		console.log(99999999999)
		$('.zhezhao').slideToggle("slow");
	})
	$('.shadow').click(function() {
		$('.zhezhao').slideUp("slow");
	});
})