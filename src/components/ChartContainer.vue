<template>
  <div>
    <v-container>
      <v-row>
        <v-col>
          <Select/>
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

export default {
  name: 'ChartContainer',
  components: {
    Select,
    Chart
  }
}
</script>

<style scoped>
  .country-fetched{
    text-align: center;
  }
</style>
