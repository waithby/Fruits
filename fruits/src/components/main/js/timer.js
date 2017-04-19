import $ from "jquery";
$(function() {
	let times = setInterval(function() {
		let oldda = new Date('2017/09/20 00:00:00')
		let da = new Date();
		let t = oldda - da;
		//				console.log(t);
		let hour = Math.floor(t / 1000 / 60 / 60 % 24);
		let min = Math.floor(t / 1000 / 60 % 60);
		let sec = Math.floor(t / 1000 % 60);
		hour<10 ? hour='0'+hour : hour;
		min <10 ? min='0'+min : min;
		sec <10 ? sec='0'+sec : sec;
		$('#hour').val(hour);
		$('#minute').val(min);
		$('#second').val(sec);
	}, 1000);
})