import Vue from 'vue'
import App from './App.vue'
import router from './router'
import'mint-ui/lib/style.css'  
import {Header,Swipe, SwipeItem ,Button,Search} from 'mint-ui'
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
import axios from "axios"
import qs  from "qs"
import VueTouch from 'vue-touch' //引入vuetouch 
import Vuex from 'vuex'

// import VueLazyLody from 'vue-lazyload'
import VueLazyLoad from 'vue-lazyload'
//引入element-ui组件库
import ElementUI from 'element-ui'

Vue.config.productionTip = false
Vue.component(Header.name,Header)
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)
Vue.component(Button.name,Button)
Vue.component(Search.name, Search);
// Vue.component(VueTouch.name,v-touch)   //引入vuetouch 
Vue.use(VueTouch, {name: 'v-touch'})
Vue.use(VueLazyLoad, {name: 'vue-lazyload'})
Vue.use(Vuex)
Vue.use(ElementUI)

axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
Vue.prototype.qs = qs;
 VueTouch.config.Swipe={
   threshold:100    //手指左右滑动的距离
}
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')


