<template>
<div class="product">
    <div class="dt"><img src="../../../images/bg1.jpg" alt="" /></div>
    <ul >
        <li>
            <h2>加工蔬菜</h2>
            <ul>
                <li class="pList" @click="test">
                    <img src="../../../images/like3.jpeg" alt="" />
                    <p>低温酸奶</p>
                </li>
                <li class="pList" @click="test">
                    <img src="../../../images/like4.png" alt="" />
                    <p>低温鲜奶</p>
                </li>
                <li class="pList" @click="test">
                    <img src="../../../images/like9.png" alt="" />
                    <p>中粮猪肉</p>
                </li>
            </ul>
        </li>
        <li  v-for = "(goods ,index) in twdata" >
           <!-- v-for = "(aa ,index1) in goods.goodsName"  -->
            <div >
            <!-- <h1>{{goods.goodsMes}}</h1> -->
            <h2 v-if='goods.goodsId == 80001'>{{goods.goodsName[index]}}</h2>
                <ul><!-- v-for = "(bb ,index2) in goods.goodsMes" v-if='goods.goodsId == 80001' -->
                    <li class="pList" @click="test" v-for ='(aa ,index1) in goods.goodsMes'>
                        <img src="../../../images/like3.jpeg" alt="" v-if='goods.goodsId == 80001'/>
                        <p v-if='goods.goodsId == 80001'>{{aa}}</p>
                    </li>
                </ul>
            </div>
        </li>
        
      
    </ul>
</div>  
</template>
<script type="text/javascript">

    import Vue from 'vue';
   import {mapActions} from "vuex";

    export default {
        name: 'ClassifyComponent',
        data:function(){
            return {
                result:false,
                name: 'tw',
                pwd: 123456,
                twdata:[{
                    goodsId:"80001",
                    "goodsName":['加工蔬菜','新鲜蔬菜','豆制品','有机蔬菜'],
                    "goodsImg":null,
                    "goodsType":null,
                    "goodsRemarks":"",
                    "goodsMes":['方便净菜','蔬菜沙拉','冷冻蔬果' ]
                },{
                    goodsId:"80002",
                    "goodsName":"[加工蔬菜,新鲜蔬菜,豆制品,有机蔬菜]",
                    "goodsImg":null,
                    "goodsType":null,
                    "goodsRemarks":"",
                     "goodsMes":[['方便净菜','蔬菜沙拉','冷冻蔬果' ],['精品蔬菜','叶菜类','根茎类','茄果类','鲜菌菇类']]
                },{
                    goodsId:"80003",
                    "goodsName":"[加工蔬菜,新鲜蔬菜,豆制品,有机蔬菜]",
                    "goodsImg":null,
                    "goodsType":null,
                    "goodsRemarks":"",
                     "goodsMes":[['方便净菜','蔬菜沙拉','冷冻蔬果' ],['精品蔬菜','叶菜类','根茎类','茄果类','鲜菌菇类']]
                }]
            }
        },
        methods:{
            // show:function(){
            //     var result = false;
            //     var i = 0;
            //     i+=1;
            //     console.log(i)
            //     var tD = this.twdata;
            //     for(var i=0;i<this.twdata.length;i++){
            //              if(this.twdata[i].goodsId=='80001'){
            //                 result = true;
            //                 return result;
            //         }
            //     }
            //    console.log(result)
            //      return result;
            // },
            ...mapActions(["test"]),
            test:function(){
                try {
                    var data={
                        name:this.name,
                        pwd:this.pwd
                     }
                    // console.log(this)
                    console.log(this.twdata)
                     this.$store.twStore.dispatch("hzm",data )
                 }catch(error) {
                     alert(error)
                 }
            }
        }

    }
</script>
 <style lang="css">
    @import url("./TwComponent.css");
    </style>