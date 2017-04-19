import $ from 'jquery';
$(function() {
	var arr = [];
	$.ajax({
		type: "POST",
		url: "http://localhost/vuejs/friut/serverPHP/DAL/main/main.php",
		dataType: "jsonp",
		async: 'false',
		success: function(res) {
			arr = res;
			console.log(arr);
			return arr;
		}
	});
})