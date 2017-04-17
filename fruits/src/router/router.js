    import Vue from 'vue';
    import VueRouter from 'vue-router';  
    import App from '../App.vue'
    import myself from '../components/myself/myselfComponent.vue';
    import login from '../components/login/loginComponent.vue';
    import register from '../components/register/registerComponent.vue';
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
              }]
            
//        {
//          // 发现 会被渲染 <router-view> 中
//          path: '/register',
//          component: zm
//        }
//        {
//          // 购物车 会被渲染在 User 的 <router-view> 中
//          path: 'car',
//          component: dh
//        },
//        {
//          path: 'myself',
//          component: yw,
//          children: [{
//          //注册 会被渲染 <router-view> 中
//          path: 'register',
//          component: register
//        },
//        {
//          //登录会被渲染 <router-view> 中
//          path: 'login',
//          component:loginComponent
//        }],
//      },
//      ]
}]
    })

export default router