import Vue from 'vue'
import App from './App.vue'
import Router from './router';
import Buefy from 'buefy';
import 'buefy/dist/buefy.css';

Vue.config.productionTip = false

Vue.use(Buefy)

new Vue({
  Router,
  render: h => h(App),
}).$mount('#app')
