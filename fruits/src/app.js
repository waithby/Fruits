import Vue from 'vue';
import router from './router/router.js';
import App from './App.vue'
import store from './store/store.js'
import findStore from './store/findStore.js'
new Vue({
	el: '#app',
	router,
	store:{store:store,findStore:findStore}
})
