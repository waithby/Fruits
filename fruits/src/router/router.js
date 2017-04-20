import Vue from 'vue';
import VueRouter from 'vue-router';
import App from '../App.vue'
//yw
import myself from '../components/myself/myselfComponent.vue';
import login from '../components/login/loginComponent.vue';
import register from '../components/register/registerComponent.vue';
//zb
import main from '../components/main/mainComponent.vue';
//zm
import find from '../components/find/findComponent.vue';
import findDetail from '../components/findDetail/findDetailComponent.vue';
//dh
import detail from '../components/detail/detail.vue';
import car from '../components/car/car.vue';

//tw
 import TwComponent from '../components/classify/TwComponent.vue';
 import TwListComponent from '../components/classify/TwListComponent.vue';
 import ClassifyComponent from '../components/classify/ClassifyComponent.vue';
//demo
import demo from '../components/componentDemo/comDemo.vue';
Vue.use(VueRouter)
var router = new VueRouter({
	routes: [{
		path: '/',
		component: App,
		children: [{
			path: '/',
			component: main
			},//yw
			{
					path: 'register',
					component: register
				}, {
					path: 'login',
					component: login
				}]
			},  {
				path: '/find',
				component: find
			}, {
				path: '/findDetail/:id',
				component: findDetail
			}, {
				path: '/detail/:id',
				component: detail
			},
      {
      //tw
      	path:'/classify',
         component:TwComponent,
         children:[{
             path:'/classify/',
             component:TwListComponent
         },{
             path:'/classify/goods/:goodsname',
             component:ClassifyComponent
         }]
      }
						// , {
						// 	path: '/car',
						// 	component: car
						// }

		]
})

export default router
