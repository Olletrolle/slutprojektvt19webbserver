<template>
  <div class="home">
    <h2>Populära posters</h2>
    <div id="products">

       <item v-for="item in products" v-bind:key="item.products" v-bind:item="item"/>

    </div>
  </div>
</template>

<script>

import item from '@/components/item';


  export default {
    name: "posters",
    components: {
      item
    },
    props: ['products'],
    methods: {
      async getPosters() {
        let res = await this.$http.get("/api/posters");
        // console.log(res)
        this.products = res.data;
      }
    },
  };
</script>

