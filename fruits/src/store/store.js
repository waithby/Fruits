import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
import gettersDemo from '../getters/gettersDemo.js'
import mutationDemo from '../mutations/mutationDemo.js'
Vue.use(Vuex)
const state={count:1};
const mutations={
   ADDNUM(state, value){
       mutationDemo(state,value)
   }
};
const actions={
    correctNum({commit}, value){
        commit("ADDNUM",value)
    }
};
const getters = {
//demo
	ttt:gettersDemo.ttt,
	counta:gettersDemo.counta
};

export default new Vuex.Store({
    state,
    mutations,
    actions,
    getters
})