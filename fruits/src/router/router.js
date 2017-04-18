    import Vue from 'vue';
    import VueRouter from 'vue-router';  
    import App from '../App.vue'
    //yw
    import myself from '../components/myself/myselfComponent.vue';
    import login from '../components/login/loginComponent.vue';
    import register from '../components/register/registerComponent.vue';
    //zm
    import find from '../components/find/findComponent.vue';
    Vue.use(VueRouter)
    var router = new VueRouter({
      routes: [{
        path: '/',
        component:App,
        children: [{
            // 分页 会被渲染 <router-view> 中
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
            //ZM
            {
	        	path: '/find',
	        	component:find
            }
        ]
            
	  }]
    })

export default router