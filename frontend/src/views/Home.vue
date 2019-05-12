<template>
  <div class="home">
    <h2>Populära posters</h2>
    <div id="products">
      <section class="product1">
        <img src="../assets/space.jpg" alt="" class="vertical">
        <p>hje</p> <!-- ska ta namn från bilden i assets -->
      </section>
      <section class="product2">
        <img src="../assets/alien.jpg" alt="" class="vertical">
        <p>najs</p>
      </section>
      <section class="product3">
        <img src="../assets/jojo.jpg" alt="" class="vertical">
        <p>najs</p>
      </section>
      <section class="product4">
        <img src="../assets/space.jpg" alt="" class="vertical">
        <p>najs</p>
      </section>
      <section class="product5">
        <img src="../assets/alien.jpg" alt="" class="vertical">
        <p>najs</p>
      </section>
      <section class="product6">
        <img src="../assets/mista.jpg" alt="" class="horizontel">
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

      // async getName() {
      //   let name =s
      // }
    },
    mounted() {
      this.getPosters()
    }
  };
</script>

