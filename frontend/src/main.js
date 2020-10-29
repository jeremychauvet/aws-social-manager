import Vue from 'vue';
import App from '@/App.vue';
import Vuex from 'vuex';
import Axios from 'axios';
import router from '@/router'
import Buefy from 'buefy';
import 'buefy/dist/buefy.css';
import AmazonCognitoVuexModule from 'amazon-cognito-vuex-module';
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.config.productionTip = false

Vue.use(Vuex)
Vue.use(Buefy)
Vue.use(Axios)
Vue.use(VueAxios)

const store = new Vuex.Store({
  modules: {
    cognito: new AmazonCognitoVuexModule({
      region: 'eu-central-1',
      userPoolId: 'eu-central-1_HtkAHkpwC',
      clientId: '5abginoth2cgb9uekbkhpg0q4m'
    })
  }
});

axios.interceptors.request.use(async config => {
  const response = await store.dispatch('getUserSession');
  if (response && response.accessToken && response.accessToken.jwtToken) {
    config.headers.AccessToken = response.accessToken.jwtToken;
  }
  return config;
});

new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
