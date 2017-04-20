<template>
<div class="product">
    <div class="dt"><img :src="('../../../images/')+$route.params.goodsname+('.jpg')"  alt="" /></div>
    <ul >
        <div class = 'clear'>
            <li :name=$route.params.goodsname v-for = "(goods ,index) in Adata.data" v-if='goods.goodsType == $route.params.goodsname+1 '><!-- v-if='goods.goodsType == "'+$route.params.goodsname+'1"' -->
            
               <p style='display: none' v-for = ''>
               {{gName=(goods.goodsName.split(','))}}
               </p>
                <p style='display: none'>{{gImg=(goods.goodsImg.split(','))}}</p>
                 <p style='display: none'>{{gMes=(goods.goodsMes.split(','))}}</p>
                <h2 v-for ='(name ,num2) in gName'>{{name}}</h2>
                    <ul>
                        <li class="pList"  v-for ='(aa ,num3) in gImg'  >
                            <img :src=aa @click="href" />
                            <p> {{gMes[num3]}}</p>
                        </li>
                    </ul>
            </li>
        </div>
        <div class = 'clear'>
            <li :name=$route.params.goodsname v-for = "(goods ,index) in Adata.data" v-if='goods.goodsType == $route.params.goodsname+2 '>
               <p style='display: none' v-for = ''>
               {{gName=(goods.goodsName.split(','))}}
               </p>
                <p style='display: none'>{{gImg=(goods.goodsImg.split(','))}}</p>
                 <p style='display: none'>{{gMes=(goods.goodsMes.split(','))}}</p>
                <h2 v-for ='(name ,num2) in gName'>{{name}}</h2>
                    <ul>
                        <li class="pList"  v-for ='(aa ,num3) in gImg'  >
                            <img :src=aa @click="href" />
                            <p> {{gMes[num3]}}</p>
                        </li>
                    </ul>
            </li>
        </div>
        <div class = 'clear'>
            <li :name=$route.params.goodsname v-for = "(goods ,index) in Adata.data" v-if='goods.goodsType == $route.params.goodsname+3 '>
               <p style='display: none' v-for = ''>
               {{gName=(goods.goodsName.split(','))}}
               </p>
                <p style='display: none'>{{gImg=(goods.goodsImg.split(','))}}</p>
                 <p style='display: none'>{{gMes=(goods.goodsMes.split(','))}}</p>
                <h2 v-for ='(name ,num2) in gName'>{{name}}</h2>
                    <ul>
                        <li class="pList"  v-for ='(aa ,num3) in gImg'  >
                            <img :src=aa @click="href" />
                            <p> {{gMes[num3]}}</p>
                        </li>
                    </ul>
            </li>
        </div>
        <div class = 'clear'>
            <li  v-for = "(goods ,index) in Adata.data" v-if='goods.goodsType == "cool4"  '>
               <p style='display: none' v-for = ''>
               {{gName=(goods.goodsName.split(','))}}
               </p>
                <p style='display: none'>{{gImg=(goods.goodsImg.split(','))}}</p>
                 <p style='display: none'>{{gMes=(goods.goodsMes.split(','))}}</p>
                <h2 v-for ='(name ,num2) in gName'>{{name}}</h2>
                    <ul>
                        <li class="pList"  v-for ='(aa ,num3) in gImg'  >
                            <img :src=aa @click="href" />
                            <p> {{gMes[num3]}}</p>
                        </li>
                    </ul>
            </li>
        </div>
    </ul>
</div>  
</template>
<script type="text/javascript">

    import Vue from 'vue';
   import {mapActions,mapGetters} from "vuex";

    export default {
        name: 'ClassifyComponent',
        data:function(){
                return{
                    name:'tw',
                    pwd:111,
                }
            },
        computed: mapGetters(['Adata']),
        methods:{
                ...mapActions(["href"]),
                href:function(){
                    try {
                        var data={
                            name:this.name,
                            pwd:this.pwd
                         }
                        console.log(this.twdata)
                         this.$store.dispatch("twhref",data )
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