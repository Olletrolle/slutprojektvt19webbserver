<template>
  <div id="app">
    <nav id="nav">
      <div class="navLeft">
        <ul>
          <li> <router-link to="/">Home</router-link> </li>
          <li> <router-link to="/about">About</router-link> </li>
          <li> <router-link to="/products">Products</router-link> </li>
        </ul>
      </div>

      <div class="navRight">
        <img src="../src\assets\search.svg" alt="search">
        <router-link to="/profile"><img src="../src\assets\person.svg" alt="profile"></router-link>
        <img src="../src\assets\shop-cart.svg" alt="shoppingcart"> 
      </div>
    </nav> 

    <router-view/>

    <footer id="footer">
      <router-link to="/about">About</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/about">About</router-link>
      <p>Logo</p>
      <p>loremibsum</p>
    </footer>
  </div>
</template>

<style lang="scss">
  @import "scss/main.scss";
</style>
