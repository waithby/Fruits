<template>
	<div>
		<header class="mui-bar mui-bar-nav">
		<a id="back" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		<h1 id="title" class="mui-title" @click="init">下拉刷新和上拉加载更多</h1>
		</header>
		<div id="pullrefresh" class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
				<ul class="mui-table-view mui-table-view-chevron">
					
				</ul>
			</div>
		</div>
	</div>
	
</template>

<script type="text/javascript">
//	require('../../../js/mui.min.js')
	require('../../../js/find.js') 
	export default {
		name: 'find',
		data: function(){
			return {
				name: 'hzm',
				pwd: 123456
			}
		},
		methods:{
			init:function(){
				/////////
//				mui.init({
//				pullRefresh: {
//					container: '#pullrefresh',
//					down: {
//						callback: pulldownRefresh
//					},
//					up: {
//						contentrefresh: '正在加载...',
//						callback: pullupRefresh
//					}
//					}
//				});
//				/**
//				 * 下拉刷新具体业务实现
//				 */
//				function pulldownRefresh() {
//					setTimeout(function() {
//						var table = document.body.querySelector('.mui-table-view');
//						var cells = document.body.querySelectorAll('.mui-table-view-cell');
//						for (var i = cells.length, len = i + 3; i < len; i++) {
//							var li = document.createElement('li');
//							li.className = 'mui-table-view-cell';
//							li.innerHTML = '<a class="mui-navigate-right"><img src="../../../images/zm00' + (i+1) +'.jpeg"></a>';
//							//下拉刷新，新纪录插到后面；
//							table.appendChild(li);
//						}
//						mui('#pullrefresh').pullRefresh().endPulldownToRefresh(); //refresh completed
//					}, 1500);
//				}
//				var count = 0;
////				/**
//				 * 上拉加载具体业务实现
//				 */
//				function pullupRefresh() {
//					setTimeout(function() {
//						mui('#pullrefresh').pullRefresh().endPullupToRefresh((++count > 2)); //参数为true代表没有更多数据了。
//						var table = document.body.querySelector('.mui-table-view');
//						var cells = document.body.querySelectorAll('.mui-table-view-cell');
//						for (var i = cells.length, len = i + 6; i < len; i++) {
//							var li = document.createElement('li');
//							li.className = 'mui-table-view-cell';
//							li.innerHTML = '<a class="mui-navigate-right"><img src="../../../images/zm00' + (i+1) +'.jpeg"></a>';
//							table.appendChild(li);
//						}
//					}, 1500);
//				}
//				if (mui.os.plus) {
//					mui.plusReady(function() {
//						setTimeout(function() {
//							mui('#pullrefresh').pullRefresh().pullupLoading();
//						}, 1000);
//	
//					});
//				} else {
//					mui.ready(function() {
//						mui('#pullrefresh').pullRefresh().pullupLoading();
//					});
//				}
				///////////
			}
		}
	}
</script>

<style lang="css">
@import url("../../../css/find.css");
@import url("../../../css/find_app.css");
@import url("../../../css/feedback-page.css");
/*@import url("../../../css/find_detail.css");*/
</style>