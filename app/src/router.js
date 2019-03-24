import Vue from 'vue'
import Router from 'vue-router'
import home from './components/tabbar/home.vue'
import login from './components/login/login.vue'
import list from './components/goods/list.vue'
import goodItem from './components/goods/good-item.vue'
import register from './components/login/register.vue'
import myhome from './components/login/myhome.vue'
import myDetail from './components/login/myDetail.vue'
import mypic from './components/login/mypic.vue'
import goodDetail from './components/goods/good-detail.vue'
import goodCart from './components/goods/good-cart.vue'

Vue.use(Router)
export default new Router({
  routes: [
   {path:'/',redirect:"/home"},
   {path:'/home',component:home},
   {path:'/login',component:login},
   {path:'/list',component:list},
   {path:'/goodItem',component:goodItem},
   {path:'/register',component:register},
   {path:'/myhome',component:myhome},
   {path:'/myDetail',component:myDetail},
   {path:'/mypic',component:mypic},
   {path:'/goodDetail',component:goodDetail},
   {path:'/goodCart',component:goodCart},
  ]

})
