import Vue from 'vue'
import Vuex from 'vuex'
import $ from 'jquery'
Vue.use(Vuex)
const store={
	state: {
        count:0
    },
    mutations: {
        aa(state, value){
//       $.getJSON("http://localhost/FruitsProject/Fruits/serverPHP/DAL/Find/Find.php",function(res){
//       	console.log(res)
//       })
		$.ajax({
			url:"http://localhost/FruitsProject/Fruits/serverPHP/DAL/Find/Find.php",
			dataType:'jsonp',
			success:function(data){
				console.log(data)
			}
		})
            
        }
    },
    actions: {
        hzm({commit}, value){
            commit("aa",value)
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
