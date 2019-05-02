<template>
    <div id="Login">
        <input type="text" name="name"  v-model="name" placeholder="Enter username">
        <input type="password" name="password" v-model="password" placeholder="Enter password">
        <input type="submit" value="Login" @click.prevent="Login">
    </div>
</template>

<script>

import axios from 'axios';

export default {
    name: 'Login',
    data(){
        return {
            name: null,
            password: null
        }
    },
    methods: {
        async Login(){

            let login_data = await axios.post('/api/profile', {name: this.name, password: this.password})
            this.$router.push('/');
        }
    }
}
</script>

