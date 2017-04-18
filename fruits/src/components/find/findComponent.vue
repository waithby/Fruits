<template>
	<div>
		<header class="mui-bar mui-bar-nav">
			<a id="back" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 id="title" class="mui-title" @click="test" >下拉刷新和上拉加载更多</h1>
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
	import {mapActions} from "vuex";
	
	export default {
		name: 'find',
		data: function(){
			return {
				name: 'hzm',
				pwd: 123456
			}
		},
		methods: {
			...mapActions(["test"]),
			test:function(){
				try {
					console.log(this)
                     this.$store.findStore.dispatch("hzm", this.name)
                 }catch(error) {
                     alert(error)
                 }
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