import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
Vue.use(Vuex)

const store={
	state: {
        count:0
    },
    mutations: {
//      REGISTER(state) {
//          state.count++;
//          console.log(state.count);
//      },
         REGISTER(state, value){
//          state.count +=value;
//          console.log(state.count);
         $.get("../../../serverPHP/DAL/Find/Find.php",function(){
         	
         })
            
        }
    },
    actions: {
        message({commit}, value){
            commit("REGISTER",value)
            console.log(value)
        }
    },
    getters: {  // getters
        countAnother: function (state) {
            return state.count
        }
    }
}
export default new Vuex.Store({
    strict: process.env.NODE_ENV !== 'production', //在非生产环境下，使用严格模式
    modules: {
        store
    }
})
