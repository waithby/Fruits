<template>
    <div id="setting" class="mui-page">
        <div class="mui-navbar-inner mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav"></span>
            </button>
            <h1 class="mui-center mui-title">分类</h1>
            <i><img src="../../../images/navbar_search2x.png"/></i>
        </div>
        <div >
            <div >
                <div >
                    <ul  class = "list clear">
                        <li class ="li1 active" @click="get">
                            <router-link to="/classify/">
                                <img src="../../../images/qie11.png" alt="" /><span>推荐分类</span>&nbsp;<strong></strong>
                            </router-link>
                        </li>
                        <li class ="li2" @click="get">
                            <router-link to="/classify/goods/veb">
                                <img src="../../../images/qie2.png" alt="" /><span>蔬菜豆菇</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li3" @click="get">
                            <router-link to="/classify/goods/fruit">
                                <img src="../../../images/qie1.png" alt="" /><span>新鲜水果</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li4" @click="get">
                            <router-link to="/classify/goods/egg">
                                <img src="../../../images/qie8.png" alt="" /><span>鲜肉蛋禽</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li5" @click="get">
                            <router-link to="/classify/goods/seafood">
                                <img src="../../../images/qie3.png" alt="" /><span>水产海鲜</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li6" @click="get">
                            <router-link to="/classify/goods/cool">
                                <img src="../../../images/qie4.png" alt="" /><span>速食冻品</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li7" @click="get">
                            <router-link to="/classify/goods/veb">
                                <img src="../../../images/qie10.png" alt="" /><span>牛奶面点</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>  
                            </router-link>
                        </li>
                        <li class ="li8" @click="get">
                            <router-link to="/classify/goods/fruit">
                                <img src="../../../images/qie12.png" alt="" /><span>粮油副食</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li9" @click="get">
                            <router-link to="/classify/goods/egg">
                                <img src="../../../images/qie9.png" alt="" /><span>食品酒水</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li10" @click="get">
                            <router-link to="/classify/goods/seafood">
                                <img src="../../../images/qie5.png" alt="" /><span>进口食品</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li11" @click="get">
                            <router-link to="/classify/goods/cool">    
                                <img src="../../../images/qie11.png" alt="" /><span>厨房用品</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        <li class ="li12" @click="get">
                            <router-link to="/classify/goods/veb">
                                <img src="../../../images/qie12.png" alt="" /><span>生活用品</span>&nbsp;<strong><img src="../../../images/tool_back.png" alt=""></strong>
                            </router-link>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
        
        <router-view></router-view>
    </div>
    </template>
   
    <script type="text/javascript">
        import {mapActions,mapGetters} from "vuex";
        import Vue from 'vue';
        import VueRouter from 'vue-router'; 
        
        export default {
            name: 'TwComponent',
            data:function(){
                return{
                    name:'tw',
                    pwd:111,
                }
            },
            computed: mapGetters(['Adata','ttt']),
            methods:{
                show:function(){
                     console.log(this.state)
                 },
                ...mapActions(["get"]),
                get:function(){
                    try {
                        var data={
                            name:this.name,
                            pwd:this.pwd
                         }
                        
                        console.log(this.twdata)
                         this.$store.dispatch("tw",data )
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