<template>
  <div id="app">
    <nav id="nav">
      <div class="navLeft">
        <ul>
          <li> <router-link to="/"><img src="../src/assets/cube.png" alt=""></router-link> </li>
          <li> <router-link to="/about"><strong>About</strong></router-link> </li>
          <li> <router-link to="/products"><strong>Products</strong></router-link> </li>
        </ul>
      </div>

      <div class="navCenter">
        <h1>Poster Heaven</h1>
      </div>

      <div class="navRight">
        <div class="main">
          <img src="../src\assets\search.svg" alt="search">
          <router-link to="/profile"><img src="../src\assets\person.svg" alt="profile"></router-link>
          <img src="../src\assets\shop-cart.svg" alt="shoppingcart" @click="showCart = !showCart">
        </div>

        <aside class="shoppingCart">
          <Cart v-if="showCart"/>
        </aside>
      </div>
    </nav> 

    <router-view/>

    <footer id="footer">

      <div>
        <router-link to="/about">About</router-link> |
        <router-link to="/about">About</router-link> |
        <router-link to="/about">About</router-link>
      </div>
      <router-link to="/"><img src="../src/assets/cube.png" alt=""></router-link>
      <P>loremibsum lorem ibsusms ibsium sa sibum</p>
    </footer>
  </div>
</template>

<script>
import Cart from '@/components/Cart.vue'

export default {
  name: "app",
  components: {
    Cart
  },
  data(){
    return {
      showCart: false
    }
  }
};
</script>


<style lang="scss">
@import "scss/main.scss";
</style>