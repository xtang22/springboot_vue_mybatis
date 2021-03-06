// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import VueRouter from "vue-router";
Vue.config.productionTip = false;
Vue.use(Element);
var axios=require('axios')
axios.defaults.baseURL='http://localhost:8001'
Vue.prototype.$axios = axios

Vue.use(VueRouter);

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  render: h=> h(App)
});
