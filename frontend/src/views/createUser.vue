<template>
     <div id="Create">
        <input type="text" name="name"  v-model="name" placeholder="Enter username">
        <input type="password" name="password" v-model="password" placeholder="Enter password">
        <input type="submit" value="Create" @click.prevent="create">
    </div>
</template>

<script>

import axios from 'axios';

export default {
    name: 'create',
    data(){
        return {
            name: null,
            password: null
            
        }
    },
    methods: {
        async create(){

            let create = await axios.post('/api/createUser', {name: this.name, password: this.password})
            this.$router.push('/');
        }
    }
}
</script>


