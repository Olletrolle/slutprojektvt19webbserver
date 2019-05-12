<template>
    <div class="cart">
        <section class="products">
            <p>Incert produkter</p>
        </section>

        <h1>
            Gå till utcheckning
        </h1>
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
        async Cart(){
            
            let Cart = await axios.post('/api/app')
        }
    }
}
</script>