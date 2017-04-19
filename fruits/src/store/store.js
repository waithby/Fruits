import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
import gettersDemo from '../getters/gettersDemo.js'
import mutationDemo from '../mutations/mutationDemo.js'
import zzbmutation from '../mutations/zzbmutation.js'
import zzbgetters from '../getters/zzbgetters.js'
Vue.use(Vuex)
const state={count:1,data1:''};
const mutations={
   ADDNUM(state, value){
       mutationDemo(state,value)
   },
   ajax1(state,value){
   		zzbmutation(state,value)
   },
   ajax2(state,value){
   		zzbmutation(state,value)
   },
   ajax3(state,value){
   		zzbmutation(state,value)
   },
   ajax4(state,value){
   		zzbmutation(state,value)
   },
   ajax5(state,value){
   		zzbmutation(state,value)
   },
};
const actions={
    correctNum({commit}, value){
        commit("ADDNUM",value)
    },
    ajax1({commit},value){
    	commit("ajax1",value)
    },
    ajax2({commit},value){
    	commit("ajax2",value)
    },
    ajax3({commit},value){
    	commit("ajax3",value)
    },
    ajax4({commit},value){
    	commit("ajax4",value)
    },
    ajax5({commit},value){
    	commit("ajax5",value)
    },
};
const getters = {
//demo
	ttt:gettersDemo.ttt,
	counta:gettersDemo.counta,
	zzbcounta:zzbgetters.data1
};

export default new Vuex.Store({
    state,
    mutations,
    actions,
    getters
})