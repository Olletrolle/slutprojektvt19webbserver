<template>
  <div id="app">
    <div id="navLeft">
      <ul>
        <li> <router-link to="/">Home</router-link> </li>
        <li> <router-link to="/about">About</router-link> </li>
        <li> <router-link to="/products">Products</router-link> </li>
      </ul>

      <div class="navRight">
        search |
        <router-link to="/profile">Profile</router-link> |
        kundvagn 
      </div>
    </div>

    <router-view/>

    <footer id="footer">
      <router-link to="/about">About</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/about">About</router-link>
    </footer>
  </div>
</template>

<style lang="scss">
  @import "scss/main.scss";
</style>
