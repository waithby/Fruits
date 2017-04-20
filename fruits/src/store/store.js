import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
import gettersDemo from '../getters/gettersDemo.js'
import findGetters from '../getters/findGetter.js'
import findDetailGetters from '../getters/findDetaliGetter.js'
import mutationDemo from '../mutations/mutationDemo.js'
import findMutation from '../mutations/findMutation.js'
import findDetailMutation from '../mutations/findDetailMutation.js'
Vue.use(Vuex)
const state={
	count:1,
	findAjax:0,
	findDetailAjax:0
};
const mutations={
   ADDNUM(state, value){
       mutationDemo(state,value)
   },
   findGetdata(state, value){
	findMutation(state, value)
   },
   findDetailGetdata(state, value){
	findDetailMutation(state, value)
   }
};
const actions={
    findgetdata({commit},value){
		commit("findGetdata",value)
    },
    finddetailgetdata({commit},value){
		commit("findDetailGetdata",value)
    }
};
const getters = {
	ttt:gettersDemo.ttt,
	counta:gettersDemo.counta,
	findData:findGetters.findData,
	findDetailData:findDetailGetters.findDetailData
};

export default new Vuex.Store({
    state,
    mutations,
    actions,
    getters
})

