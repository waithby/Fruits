//自己的算法
import $ from "jquery";
export default function(state, value) {
	console.log(value);
	var arr = [];
	$.ajax({
		type: "GET",
		url: "http://localhost/vuejs/fruit2/serverPHP/DAL/main/main3.php?val=" + value,
		dataType: "jsonp",
		async: 'false',
		success: function(res) {
			state.data4 = JSON.parse(res);
			//			console.log(state.data1);
			return state
		}
	});
	return state
}