<template>
<div>
	<header class="mui-bar mui-bar-nav">
			<a id="back" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 id="title" class="mui-title">踏青休闲食品</h1>
	</header>
	<div class="title_img">
		<img v-for="(item,index) in findDetailData" :src="item.goodsImg" v-if="index==0?true:false" />
	</div>
	<div class="mui-content">
		<div class="title">踏青美食</div>
		<div class="mui-card" style="margin-bottom: 35px;">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media" v-for="(item,index) in findDetailData" key="index" v-if="index==0?false:true">
					<router-link :to="'/detail/'+item.goodsId">
						<img class="mui-media-object mui-pull-right" :src="item.goodsImg">
						<div class="mui-media-body">
							<p class='mui-ellipsis'>{{item.goodsName}}</p>
							<span class="zm_price">${{item.goodsNewPrice}}</span>
							<span class="zm_oldprice">${{item.goodsOldPrice}}</span>
						</div>
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
    computed: mapGetters(["findDetailData"]),
    methods:{	
    	
    },
    beforeMount(){
    	var str = location.hash.split("/")[2]+''
   		this.$store.dispatch("finddetailgetdata",str)	
    }
 }
</script>

<style lang="css">
@import url("../../../css/find_detail.css");
</style>
