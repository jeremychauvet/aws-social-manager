import Vue from "vue";
import Router from "vue-router";
import Home from '@/components/page/Home';
import About from '@/components/page/About';
import Login from '@/components/page/Login';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: "/",
      name: "Home",
      component: Home
    },
    {
      path: "/about",
      name: "About",
      component: About
    },
    {
      path: "/login",
      name: "Login",
      component: Login
    }
  ]
});
