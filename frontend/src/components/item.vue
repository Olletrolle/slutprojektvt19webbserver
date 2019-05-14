<template>
    <section class="product">
        <img v-bind:src="require('../assets/' + item.img)"  alt="item.name" :class="item.format"  @click="addToCart(item)">
        <div class="info">
            <p>{{ item.name }} | </p> 
            <p>{{ item.size }} | </p>
            <p>{{ item.price }}kr</p>
        </div>
       
    </section>
</template>

<script>

import axios from 'axios';

export default {
    name: 'item',
    props: ['item'],
    methods: {
        addToCart(item){
            this.$parent.$parent.cart.push(item);
        }
    }    
}
</script>
