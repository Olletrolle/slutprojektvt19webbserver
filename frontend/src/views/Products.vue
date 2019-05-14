<template>
  <div class="kategories">
        <h2>Kategegori 1</h2>
        <div id="products" >       <!-- v-if="kategori === 'person'", dela upp posters i kategorier -->

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
    props: ['products', ],  //'kategori'
    methods: {
      async getPosters() {
        let res = await this.$http.get("/api/posters");
        // console.log(res)
        this.products = res.data;
      }
    },
  };
</script>

