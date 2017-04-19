//require('./mui.min.js')
var init = function(data){
	mui.init({
		pullRefresh: {
			container: '#pullrefresh',
			down: {
//				callback: pulldownRefresh(data)
			},
			up: {
				contentrefresh: '正在加载...',
//				callback: pullupRefresh(data)
			}
		}
	});
	
	
//	if (mui.os.plus) {
//				mui.plusReady(function() {
//					setTimeout(function() {
//						mui('#pullrefresh').pullRefresh().pullupLoading();
//					}, 1000);
//
//				});
//			} else {
//				mui.ready(function() {
//					mui('#pullrefresh').pullRefresh().pullupLoading();
//				});
//			}
//} 
//
//	/**
//	 * 下拉刷新具体业务实现
//	 */
//function pulldownRefresh(data) {
//				setTimeout(function() {
//					var table = document.body.querySelector('.mui-table-view');
//					var cells = document.body.querySelectorAll('.mui-table-view-cell');
//					for (var i = cells.length, len = i + 4; i < len; i++) {
//						var li = document.createElement('li');
//						li.className = 'mui-table-view-cell';
//						li.innerHTML = '<a class="mui-navigate-right"><img src="../images/zm00' + (i+1) +'.jpeg"></a>';
//						//下拉刷新，新纪录插到后面；
//						table.appendChild(li);
//					}
//					mui('#pullrefresh').pullRefresh().endPulldownToRefresh(); //refresh completed
//				}, 1500);
//			}
//	var count = 0;
//	/**
//	 * 上拉加载具体业务实现
//	 */
//	function pullupRefresh(data) {
//		console.log(data)
//		setTimeout(function(data) {
//			mui('#pullrefresh').pullRefresh().endPullupToRefresh((++count > 2)); //参数为true代表没有更多数据了。
//			var table = document.body.querySelector('.mui-table-view');
//			var cells = document.body.querySelectorAll('.mui-table-view-cell');
//			for (var i = cells.length, len = i + 3; i < data.length; i++) {
//				var li = document.createElement('li');
//				li.className = 'mui-table-view-cell';
//				li.innerHTML = '<a class="mui-navigate-right"><img src="'+data[i]+'"></a>';
//				table.appendChild(li);
//			}
//		}, 1500);
//	}
//			
export {init}
