<template>
  <div class="home">
    <h1>POPulÄRt</h1>
    <div id="products">
      <section class="product1">
        <img src="" alt="">
        <p>hje</p>
      </section>
      <section class="product2">
        <img src="" alt="">
        <p>najs</p>
      </section>
    </div>
  </div>
</template>

<script>
  // import clothing from "#DATABASE";
  export default {
    name: "posters",
    data() {
      return {
        products: null
      };
    },
    methods: {
      async getPosters() {
        let res = await this.$http.get("/api/posters");
        console.log(res)
        this.products = res.data;
      }
    },
    mounted() {
      this.getPosters()
    }
  };
</script>

