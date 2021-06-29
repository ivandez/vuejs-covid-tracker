<template>
  <div>
    <v-container>
      <v-row>
        <v-col>
          <Select :countries="countries" v-on:get-country="getCountry"/>
        </v-col>
      </v-row>
      <v-row>
        <v-col class="country-fetched">
          <p>{{ country || "Seleciona un país en el selector de arriba" }}</p>
        </v-col>
      </v-row>
      <v-row>
        <v-col>
          <Chart :chartData="chartdata" v-if="loaded"/>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import Select from './Select.vue'
import Chart from './Chart.vue'
import axios from 'axios'

export default {
  name: 'ChartContainer',
  components: {
    Select,
    Chart
  },
  data () {
    return {
      countries: undefined,
      country: '',
      chartdata: undefined,
      loaded: false
    }
  },
  methods: {
    async getCountries () {
      let response = null
      try {
        response = await axios.get(
          'https://corona.lmao.ninja/v2/countries?yesterday&sort'
        )
      } catch (error) {
        console.log('error fetching countries')
      }
      const countries = response.data.map(country => country.country)

      this.countries = countries
    },
    // return selected country from Select.vue
    getCountry (e) {
      this.country = `Casos de Covid-19 en ${e}`
      this.fetchCountryCase(e)
    },
    // return covid case from selected country
    async fetchCountryCase (country) {
      let response = null
      try {
        response = await axios.get(`https://corona.lmao.ninja/v2/countries/${country}?yesterday&strict&query%20`)
        this.chartdata = this.setChartData(response.data)
        this.loaded = true
      } catch (e) {
        console.error(e)
      }
    },
    setChartData ({ active, recovered, deaths }) {
      const chartData = {
        labels: ['Infectados', 'Recuperados', 'Fallecidos'],
        datasets: [
          {
            backgroundColor: ['#7778e6', '#90e294', '#f87979'],
            data: [active, recovered, deaths]
          }
        ]
      }
      return chartData
    }
  },
  mounted () {
    this.getCountries()
  }
}
</script>

<style scoped>
.country-fetched {
  text-align: center;
}
</style>
