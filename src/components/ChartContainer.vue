<template>
  <div>
    <v-container>
      <v-row>
        <v-col>
          <Select :countries="countries" />
        </v-col>
      </v-row>
      <v-row>
        <v-col class="country-fetched">
          <p>Casos de Covid-19 en ARgentina</p>
        </v-col>
      </v-row>
      <v-row>
        <v-col>
          <Chart />
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
      countries: this.getCountries()
    }
  },
  methods: {
    async getCountries () {
      let response = null
      try {
        response = await axios
          .get('https://corona.lmao.ninja/v2/countries?yesterday&sort')
      } catch (error) {
        console.log('error fetching countries')
      }
      const countries = response.data.map(country => country.country)

      this.countries = countries
    }
  }
}
</script>

<style scoped>
.country-fetched {
  text-align: center;
}
</style>
