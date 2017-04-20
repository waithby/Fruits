import $ from 'jquery'
export default function(state,value){
	$.ajax({
		url:'http://localhost/FruitsProject/Fruits/serverPHP/DAL/Find/Find.php',
		dataType:'jsonp',
		jsonpCallback:'demo',
		success:function(res){
		console.log(res)
			state.findAjax = JSON.parse(res)
//			console.log(state.findAjax)
			return state
		}
	})
}