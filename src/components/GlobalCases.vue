<template>
  <div>
    <h1 class="container-title">Casos Mundiales</h1>
    <div class="main-container">
      <Card
        class="vuetify-car"
        title="Recuperados"
        cases="1.956"
        text="Cantidad de recuperados del Covid-19"
        date="april 2021"
      />
      <Card
        class="vuetify-car"
        title="Recuperados"
        cases="1.956"
        text="Cantidad de recuperados del Covid-19"
        date="april 2021"
      />
      <Card
        class="vuetify-car"
        title="Recuperados"
        cases="1.956"
        text="Cantidad de recuperados del Covid-19"
        date="april 2021"
      />
    </div>
  </div>
</template>

<script>
import Card from './Card.vue'
export default {
  name: 'GlobalCases',
  components: {
    Card
  }
}
</script>

<style>
.vuetify-car {
  width: 70%;
}
.main-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.container-title {
  text-align: center;
}
@media only screen and (min-width: 768px){
  .main-container{
  flex-direction: row;
  justify-content: space-around;
  }
  .vuetify-car {
  width: 30%;
}
}
</style>
