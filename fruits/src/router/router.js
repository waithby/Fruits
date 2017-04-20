    import Vue from 'vue';
    import VueRouter from 'vue-router';  
    import App from '../App.vue'
    //yw
    import myself from '../components/myself/myselfComponent.vue';
    import login from '../components/login/loginComponent.vue';
    import register from '../components/register/registerComponent.vue';
    //zm
    import find from '../components/find/findComponent.vue';
    import findDetail from '../components/findDetail/findDetailComponent.vue';
   //tw
//  import TwComponent from '../components/classify/TwComponent.vue';
//  import TwListComponent from '../components/classify/TwListComponent.vue';
//  import ClassifyComponent from '../components/classify/ClassifyComponent.vue';
	//demo
	import demo from '../components/componentDemo/comDemo.vue';
    Vue.use(VueRouter)
    var router = new VueRouter({
      routes: [{
        path: '/',
        component:App,
        children:[{
        	//yw
        	path: '/myself',
            component:myself,
            children:[{
	            	path:'/register',
	            	component:register
	            },        
	            {
			        path: '/login',
			        component:login
	            }]
	        },
	        //zm
	        {
	        	path: '/find',
	        	component:find
//	        	children:[{
//	            	path:'/findDetail',
//	            	component:findDetail
//	            }]
	        },
	        {
	        	path: '/findDetail/:id',
	        	component:findDetail
	        },
	        //demo
	        {
	        	path: '/demo',
	        	component:demo
	        }
	        
	        ]
      }]
    })

export default router

