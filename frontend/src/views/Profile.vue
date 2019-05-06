<template>
  <div class="profile">
    <div class="content">
      <router-link class="create" to="/createUser">Gör användare </router-link>

      <h2  @click="showLogin = !showLogin">Logga in</h2>

      <Login v-if="showLogin"/>
    </div>
   
  </div>
</template>

<script>
import Login from '@/components/Login.vue'

export default {
  name: "app",
  components: {
    Login
  },
  data(){
    return {
      showLogin: false
    }
  }
};
</script>
