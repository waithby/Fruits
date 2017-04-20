<template>
<div>
  <div id="dh_detail">
    <div id="dh_wrap">
      <div id="slider" class="mui-slider">
        <div class="mui-slider-group mui-slider-loop">
          <div class="mui-slider-item mui-slider-item-duplicate">
            <a href="javascript:void(0)">
              <img src="images/dh0001.jpg">
            </a>
          </div>

          <div class="mui-slider-item">
            <a href="javascript:void(0)">
              <img src="images/dh0002 .jpg">
            </a>
          </div>
          <div class="mui-slider-item">
            <a href="javascript:void(0)">
              <img src="images/dh0003.jpg">
            </a>
          </div>
          <div class="mui-slider-item">
            <a href="javascript:void(0)">
              <img src="images/dh0001.jpg">
            </a>
          </div>
          <div class="mui-slider-item mui-slider-item-duplicate">
            <a href="#">
              <img src="images/dh0002 .jpg">
            </a>
          </div>
        </div>
        <div class="mui-slider-indicator">
          <div class="mui-indicator mui-active"></div>
          <div class="mui-indicator"></div>
          <div class="mui-indicator"></div>
        </div>
      </div>
      <div class="product-info">
        <div class="product-name">{{detailObj.fruit_orign}}{{detailObj.fruit_type}}(GD)</div>
        <div class="product-price"><span class="price">￥<span id="divPrice">{{detailObj.fruit_newprice}}</span></span><del id="divPrice2">￥{{detailObj.fruit_oldprice}}</del><img src="" style="display:none" id="phone"></div>
        <div class="quantity">
          <a id="decrement" class="decrement" @click='decrement'>-</a>
          <input id="txtProductCount" class="itxt" value=1 v-model='counta'>
          <a id="increment" class="increment" @click='increment'>+</a>
        </div>
      </div>
      <div class="product-choose">
        <div class="title">规格</div>
        <ul id="divSpec">
         <li>
          <a>1个/份</a>
        </li>
        <li class="active">
         <a>2个/份</a>
       </li>
     </ul>
   </div>
  <div class="promotion_list" style="display:none">
      <ul id="divPromotions"></ul>
  </div>
  <div class="product-other-wrap">
    <div class="product-other">
      <p>产地 <span id="spPlaceOfOrigin">{{detailObj.fruit_orign}}</span></p>
      <p id="spDeliveryTips">16:00 前完成订单，预计明日(4月16日)送达</p>
    </div>
  </div>
  <div class="comment_link" id="divVote"><a>用户评价<span id="spVoteCount">({{detailObj.user_review}})</span><span class="right" id="spVotePositiveRate"><strong><span>{{detailObj.user_satisfacy}}</span></strong>好评</span><span class="arrow" id="confirmVote"></span></a></div>
  <div class="details_link">
  <a id="aProdectDetail" href="javascript:void(0)">商品图文详情（建议在WIFI下查看<span class="arrow">&gt;</span></a></div>
</div>
</div>
<div class="shopping-cart">
  <div class="left">
    <a href="#" class="home"><i class="icon1"></i>首页</a>
    <div class="cart">
      <a href="javascript:void(0)" class="cart-in">
        <i class="num">{{buy}}</i>
        <i class="icon2"></i>
        购物车
      </a>
    </div>
  </div>
  <div class="right">
    <a href="javascript:void(0)" id="btnAddCart" @click="buynum" >加入购物车</a>

  </div>
</div>
</div>
</template>
<style type="text/css">
  @import url(../../../css/dh_detail.css)
</style>
<script type="text/javascript">
  import mui from "./dh.js";
  import url from "../../mutations/mutationDh.js"
  import {mapGetters, mapActions} from "vuex";
  mui();
  export default {
    data: function(){
      return{
        num:1
      }
    },
    computed: mapGetters(['counta','detailObj','buy']),
    methods:{
      ...mapActions(["increment","decrement","buynum"]),
      increment() {
        try {
         this.$store.dispatch("correctNum",this.num)
       }catch(error) {
         alert(error)
       }
     },
     decrement() {
       try {
         this.$store.dispatch("decNum",this.num)
       }catch(error) {
         alert(error)
       }
     },
     buynum(){
      try {
         this.$store.dispatch("buyNum")
       }catch(error) {
         alert(error)
       }
     }
   },
   beforeMount(){
    if(location.hash){
        url.search(location.href)
        try {
         this.$store.dispatch("upData",location.href)
       }catch(error) {
         alert(error)
       }
    }
   }

}
</script>










