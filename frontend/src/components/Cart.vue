<template>
    <article id="cart">

        <h2>Kundvagn</h2>

        <section class="products" v-for="item in items" :key="item.name">
            <section class="cartImg">
                <img v-bind:src="require('../assets/' + item.img)"  alt="item.name">
            </section>
            <section class="cartInfo">
                <h2>
                    {{item.name}} |
                </h2>
                <h2>
                    {{item.price}} kr
                </h2>
            </section>
        </section>

        <h1>Köp</h1>

    </article>
</template>


<script>

import axios from 'axios';

export default {
    name: 'Cart',
    props: ['items'],
    methods: {
        async Cart(){
            
            let Cart = await axios.post('/api/app')
        }
    }
}
</script>