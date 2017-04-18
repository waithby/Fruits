<template>
<div class="product">
    <div class="dt"><img src="../../../images/bg1.jpg" alt="" /></div>
    <ul>
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
                name: 'tw',
                pwd: 123456
            }
        },
        methods:{
            ...mapActions(["test"]),
            test:function(){
                try {
                    var data={
                        name:this.name,
                        pwd:this.pwd
                     }
                    // console.log(this)
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