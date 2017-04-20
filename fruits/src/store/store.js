import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
import gettersDemo from '../getters/gettersDemo.js'
import mutationDemo from '../mutations/mutationDemo.js'
import zzbmutation1 from '../mutations/zzbmutation1.js'
import zzbmutation2 from '../mutations/zzbmutation2.js'
import zzbmutation3 from '../mutations/zzbmutation3.js'
import zzbmutation4 from '../mutations/zzbmutation4.js'
import zzbmutation5 from '../mutations/zzbmutation5.js'
import zzbmutation6 from '../mutations/zzbmutation6.js'
import zzbgetters from '../getters/zzbgetters.js'
Vue.use(Vuex)
const state={count:1,data1:'',data2:'',data3:'',data4:'',data5:'',data6:''};
const mutations={
   ADDNUM(state, value){
       mutationDemo(state,value)
   },
   ajax1(state,value){
   		zzbmutation1(state,value)
   },
   ajax2(state,value){
   		zzbmutation2(state,value)
   },
   ajax3(state,value){
   		zzbmutation3(state,value)
   },
   ajax4(state,value){
   		zzbmutation4(state,value)
   },
   ajax5(state,value){
   		zzbmutation5(state,value)
   },
   ajax6(state,value){
   		zzbmutation6(state,value)
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
    ajax6({commit},value){
    	commit("ajax6",value)
    },
};
const getters = {
//demo
	ttt:gettersDemo.ttt,
	counta:gettersDemo.counta,
	zzbcounta1:zzbgetters.data1,
	zzbcounta2:zzbgetters.data2,
	zzbcounta3:zzbgetters.data3,
	zzbcounta4:zzbgetters.data4,
	zzbcounta5:zzbgetters.data5,
	zzbcounta6:zzbgetters.data6,
};

export default new Vuex.Store({
    state,
    mutations,
    actions,
    getters
})