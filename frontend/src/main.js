import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import VueAxios from 'vue-axios'


Vue.use(VueAxios, axios)
Vue.config.productionTip = false

new Vue({
  data: {
    products: window.products,
    activeProduct: null,
    views: {
        singleProduct: false,
        cart: false
    },
    cart: []
  },
  router,
  render: h => h(App)
}).$mount('#app')