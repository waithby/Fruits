<template>
  <div id="box">
    <header class="mui-bar mui-bar-nav index-nav" id="header">
      <a href="#" class="index-posit">广州<span class="mui-icon mui-icon-arrowdown"></span></a>
      <!--<h1 class="mui-title">my</h1>-->
      <!--<a href="login.html" class=" mui-icon mui-icon-contact person"></a>-->
      <div class="index-logo">
        <img src="http://localhost:8080/src/components/main/img/logo.jpg" />
      </div>
      <!--<div class="mui-input-row mui-search search">
          <input type="search" class="mui-input-clear" placeholder="">
        </div>-->
      <div class="index-search">
        <span class="mui-icon mui-icon-search"></span>
      </div>

    </header>
    <div class="mui-content index-body clear">
      <div class="zhezhao">
        <ul class="list_city">
          <li>北京</li>
          <li>上海</li>
          <li>广州</li>
          <li>深圳</li>
        </ul>
        <div class="shadow">

        </div>
      </div>
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner1.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner2.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner3.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner4.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner5.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner6.jpg" /></div>
          <div class="swiper-slide"><img src="http://localhost:8080/src/components/main/img/banner7.jpg" /></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
      </div>
      <div class="index_time">
        <div class="index_time_p1">限时抢购</div>
        <div class="index_time_p2">剩余
          <input type="button" class="index_time_bu1" value="04" id="hour">:
          <input type="button" class="index_time_bu1" value="12" id="minute">:
          <input type="button" class="index_time_bu1" value="30" id="second">
        </div>
        <div class="index_time_p3">
          <a href="#">查看更多</a>
          <span class="mui-icon mui-icon-arrowright"></span>
        </div>
      </div>
      <!--index_time-->

      <div id="scroller" class="index_time_list clear">
        <ul class="img-container" style="width:2310px">
          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_1.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">春笋<br>
              <span class="index_floor_list_pb">￥2.99</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>

          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_2.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">丝瓜<br>
              <span class="index_floor_list_pb">￥4.30</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>

          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_3.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">白蘑菇<br>
              <span class="index_floor_list_pb">￥6.90</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>

          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_4.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">皇冠梨 大包...<br>
              <span class="index_floor_list_pb">￥3.30</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>
          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_4.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">皇冠梨 大包...<br>
              <span class="index_floor_list_pb">￥3.30</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>

          <li class="index_touch">
            <div class="index_time_list_z1"><img src="http://localhost:8080/src/components/main/img/list1_3.jpg" width="70" height="70"></div>

            <div class="index_time_list_z2">白蘑菇<br>
              <span class="index_floor_list_pb">￥6.90</span><span class="index_floor_list_pc">/500g</span></div>
            <div class="index_flash_sale_goodtb2">
              <div class="index_flash_sale_goodtb_left"><img src="http://localhost:8080/src/components/main/img/time.jpg" width="26px"></div>
              <div class="index_flash_sale_goodtb_right">特价</div>
            </div>
          </li>
        </ul>
      </div>
      <!--index_time_list-->

      <div class="index_user_center clear">
        <div class="index_u" onclick="is_login('1', true)"><img src="http://localhost:8080/src/components/main/img/select1.jpg" width="50px" border="none"></div>
        <div class="index_u" onclick="is_login('2', true)"><img src="http://localhost:8080/src/components/main/img/select2.jpg" width="50px" border="none"></div>
        <div class="index_u" id="checkIn"><img src="http://localhost:8080/src/components/main/img/select3.jpg" width="50px" border="none"></div>
        <div class="index_u" onclick="is_login('4', true)"><img src="http://localhost:8080/src/components/main/img/select4.jpg" width="50px" border="none"></div>

        <div class="index_u_t1">我的订单</div>
        <div class="index_u_t1">轻松退</div>
        <div class="index_u_t1">签到赚积分</div>
        <div class="index_u_t1">账户充值</div>
      </div>
      <!--index_user_center-->
      <div class="index_user_center clear">
        <div class="index_u" onclick="is_login('5', false)"><img src="http://localhost:8080/src/components/main/img/select5.jpg" width="50px" border="none"></div>
        <div class="index_u" onclick="is_login('6', false)"><img src="http://localhost:8080/src/components/main/img/select6.jpg" width="50px" border="none"></div>
        <div class="index_u" onclick="is_login('7', false)"><img src="http://localhost:8080/src/components/main/img/select7.jpg" width="50px" border="none"></div>
        <div class="index_u" onclick="is_login('8', false)"><img src="http://localhost:8080/src/components/main/img/select8.jpg" width="50px" border="none"></div>
        <div class="index_u_t1">送礼专区</div>
        <div class="index_u_t1">进口馆</div>
        <div class="index_u_t1">吃饭吧</div>
        <div class="index_u_t1">食材检测</div>
      </div>
      <!--index_user_center-->

      <div class="content clear">
        <div class="content1 floor1">
          <img src="http://localhost:8080/src/components/main/img/banner6.jpg" />
          <div class="index_sale">
            <div class="index_sale_z1">4月营养早餐</div>
          </div>
          <ul class="list">
            <li v-for="(item,index) in list1.zzbcounta1"><img :src="item.goodsImg"/></li>
          </ul>
        </div>
        <!--floor1-->
        <div class="content1 floor2">
          <img src="http://localhost:8080/src/components/main/img/banner14.jpg" />
          <div class="index_sale">
            <div class="index_sale_z1">燕之坊</div>
            <div class="index_sale_z2">特惠专享</div>
          </div>
          <ul class="list">
            <li v-for="(item,index) in list1.zzbcounta2"><img :src="item.goodsImg" /></li>
          </ul>
        </div>
        <!--floor2-->

        <div class="content1 floor3">
          <img src="http://localhost:8080/src/components/main/img/banner25.jpg" />
          <div class="index_sale">
            <div class="index_sale_z1">休闲一刻</div>
            <!--<div class="index_sale_z2">特惠专享</div>-->
          </div>
          <ul class="list">
            <li v-for="(item,index) in list1.zzbcounta3"><img :src="item.goodsImg" /></li>
          </ul>
        </div>
        <!--floor3-->

        <div class="content1 floor4">
          <img src="http://localhost:8080/src/components/main/img/banner1.jpg" />
          <div class="index_sale">
            <div class="index_sale_z1">中粮</div>
            <!--<div class="index_sale_z2">特惠专享</div>-->
          </div>
          <ul class="list">
            <li v-for="(item,index) in list1.zzbcounta4"><img :src="item.goodsImg" /></li>
          </ul>
        </div>
        <!--floor4-->
        <div class="content1 floor5">
          <ul class="floor5_list ">
            <li v-for="(item,index) in list1.zzbcounta5"><img :src="item.goodsImg" /></li>
          </ul>
        </div>
        <!--floor4-->
        <div class="go_top" style="display: none;">
          <img src="http://m.34580.com/assets/images/totop.png" width="50px" height="50px">
        </div>
      </div>
      <!--content-->

    </div>
  </div>
</template>
<script type="text/javascript">
  import {
    mapGetters,
    mapActions
  } from "vuex";
  import timer from "./js/timer.js";
  import zhezhao from "./js/zhezhao.js";
  //  import goods from "./components/main/js/goods.js";
  export default {
    data: function() {
      return {
        dfg: 'dfg',
        list1: []
      }
    },
    computed: mapGetters(['counta', 'zzbcounta']),
    methods: {
      ...mapActions(["goodsajax"], ["zhezhao"]),
      goodsajax() {
        try {
          this.$store.dispatch("correctNum", 1);
        } catch(error) {
          alert(error)
        }
      },
      zhezhao() {
        try {
          this.$store.dispatch("zhezhao")
        } catch(error) {
          alert(error)
        }
      },
    },
    beforeMount: function() {
      this.$store.dispatch('ajax1', 'list6_%');
      this.$store.dispatch('ajax2', 'list4_%');
      this.$store.dispatch('ajax3', 'list5_%');
      this.$store.dispatch('ajax4', 'list3_%');
      this.$store.dispatch('ajax5', 'list7_%');
      this.$store.dispatch('ajax6', 'banner%');
      //      list = this.zzbcounta;

      this.list1 = this.$store.getters;
      console.log(this.list1);
    },
    beforeUpdate: function() {
      console.log(this.$store.getters)
    }
  }
</script>
<style lang="css">
  @import url("./css/index.css");
</style>
