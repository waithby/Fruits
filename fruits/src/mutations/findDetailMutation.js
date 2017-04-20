import $ from 'jquery'
export default function(state,value){
//	var str = JSON.stringify({gid:value})
//	var obj = {"gid":12}
//console.log(typeof str)
	$.ajax({
		url:'http://localhost/FruitsProject/Fruits/serverPHP/DAL/FindDetail/FindDetail.php',
		type:"get",
		dataType:'jsonp',
		success:function(res){
			var newArr=[];
			$.ajax({
				url:'http://localhost/FruitsProject/Fruits/serverPHP/DAL/Find/Find.php',
				dataType:'jsonp',
				jsonpCallback:'demo',
				success:function(res){
//				console.log(res)
					var arrimg= JSON.parse(res);
					for(var k=0;k<arrimg.length;k++){
						if(arrimg[k].goodsId == value){
//							console.log(arrimg[k])
							newArr.unshift(arrimg[k])
						}
					}
				}
			})
			
			var arr= JSON.parse(res);
			for(var i=0;i<arr.length;i++){
				if(arr[i].goodsType == value){
					newArr.push(arr[i])
				}
			}
			console.log(newArr)
			state.findDetailAjax = newArr
			return state
		}
	})
}