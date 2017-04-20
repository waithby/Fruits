<template>
	<div id="find">
		<header class="mui-bar mui-bar-nav">
			<a id="back" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 id="title" class="mui-title">踏青休闲食品</h1>
		</header>
			<router-view></router-view>
			<div id="pullrefresh" class="mui-content mui-scroll-wrapper" style="margin-top: 45px;">
				<div class="mui-scroll">
					<!--数据列表-->
					<ul class="mui-table-view mui-table-view-chevron">
						<li class=" find_view_cell" v-for="(item,index) in findData" key={{index}}>
							<router-link :to="'/findDetail/'+item.goodsId">
								<img :src="item.goodsImg">
							</router-link> 
						</li>
					</ul>
				</div>
			</div>
	</div>
	
</template>

<script type="text/javascript">
import $ from 'jquery'
  import {mapGetters, mapActions} from "vuex";
  export default {
    data: function(){
      return {
      	value:1
      }
    },
    computed: mapGetters(["findData"]),
    methods:{	
    	
    },
    beforeMount(){
   		this.$store.dispatch("findgetdata")	
    }
 }
</script>

<style lang="css">
@import url("../../../css/find.css");
@import url("../../../css/find_app.css");
@import url("../../../css/feedback-page.css");
</style>