<template>
  <div>
    <h1 class="container-title">Casos Mundiales</h1>
    <div class="main-container">
      <Card
        class="vuetify-car"
        title="Infectados"
        :cases="covidCases.active"
        text="Cantidad de infectados del Covid-19"
        :date="date"
      />
      <Card
        class="vuetify-car"
        title="Recuperados"
        :cases="covidCases.recovered"
        text="Cantidad de recuperados del Covid-19"
        :date="date"
      />
      <Card
        class="vuetify-car"
        title="Fallecidos"
        :cases="covidCases.deaths"
        text="Cantidad de Fallecidos del Covid-19"
        :date="date"
      />
    </div>
  </div>
</template>

<script>
import Card from './Card.vue'
import axios from 'axios'
export default {
  name: 'GlobalCases',
  components: {
    Card
  },
  data () {
    return {
      date: this.getDate(),
      covidCases: this.getGlobalCases()
    }
  },
  methods: {
    getDate () {
      const currentDate = new Date()
      const day = currentDate.getDate()
      const month = currentDate.getMonth() + 1
      const year = currentDate.getFullYear()
      // current date in DD/MM/YYYY
      const todayDate = `${day}/${month}/${year}`
      return todayDate
    },

    /**
     * TODO
     *  manejar los errores con buena UX
     */
    async getGlobalCases () {
      return await axios
        .get('https://corona.lmao.ninja/v2/all')
        .then(({ data }) => {
          // handle success
          console.log('Data update every 10 minutes')
          this.covidCases = data
        })
        .catch(function (error) {
          // handle error
          console.log(error)
        })
    }
  },
  mounted () {
    this.getGlobalCases()
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
@media only screen and (min-width: 768px) {
  .main-container {
    flex-direction: row;
    justify-content: space-around;
  }
  .vuetify-car {
    width: 30%;
  }
}
</style>
