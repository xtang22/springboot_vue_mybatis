import Vue from 'vue'
import Router from 'vue-router'
// import Login from "../views/Login";
import Main from "../views/Main";
import Login1 from "../views/Login1";
import Register from "../views/Register";
import ProvinceManage from "../views/ProvinceManage";
import AddProvince from "../views/AddProvince";
import PlaceList from "../views/PlaceList";
import UpdateProvince from "../views/UpdateProvince";
Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [

    {
      path: '/main',
      name: "旅游信息管理系统",
      component: Main,
      show:true,
      redirect: '/ProvinceManage',
      children: [
        {
          path: '/ProvinceManage',
          name: "查询省份",
          component: ProvinceManage
        },
        {
          path: '/AddProvince',
          name: "添加省份",
          component: AddProvince
        },
      ]
    },
    {
      path: '/',
      name: 'login',
      component: Login1,
      show:false
    },
    {
      path: '/update',
      name: 'update',
      component: UpdateProvince,
      show:false

    },
    {
      path: '/register',
      name: 'register',
      component: Register,
      show:false
    },
    {
      path: '/placeList',
      name: 'placeList',
      component: PlaceList,
      show:false
    },

  ]
})
