<template>
<div class="del" >
    <div class="dt"><img src="../../../images/zm0012.jpeg" alt="" /></div>
    <ul>
        <li @click= 'href'>
            <img src="../../../images/like3.jpeg" alt="" />
            <p>低温酸奶</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like4.png" alt="" />
            <p>低温鲜奶</p>
        </li>

        <li @click= 'href'>
            <img src="../../../images/like9.png" alt="" />
            <p>中粮猪肉</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like8.png" alt="" />
            <p>冷鲜牛肉</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like6.png" alt="" />
            <p>碳酸饮料</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/ling(20).png" alt="" />
            <p>咖啡奶茶</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like2.png" alt="" />
            <p>蜂蜜饮品</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/liang(14).jpeg" alt="" />
            <p>调和油</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like3.jpeg" alt="" />
            <p>啤酒洋酒</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like1.png" alt="" />
            <p>淡水鱼</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/like7.png" alt="" />
            <p>虾仁</p>
        </li>
        <li @click= 'href'>
            <img src="../../../images/dong2.jpeg" alt="" />
            <p>方便菜</p>
        </li>
    </ul>
</div>
</template>
<script type="text/javascript">
    import Vue from 'vue';
    import {mapActions,mapGetters} from "vuex";
    export default {
        name: 'TwListComponent',
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