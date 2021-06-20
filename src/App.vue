<template>
  <v-app>
    <v-app-bar app color="primary" dark>
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-logo-dark.png"
          transition="scale-transition"
          width="40"
        />
      </div>

      <v-spacer></v-spacer>

      <span class="mr-2">Covid-19 Tracker</span>
    </v-app-bar>

    <v-main>
      <GlobalCases />
      <ChartContainer/>
    </v-main>
  </v-app>
</template>

<script>
import GlobalCases from './components/GlobalCases.vue'
import ChartContainer from './components/ChartContainer.vue'

export default {
  name: 'App',

  components: {
    GlobalCases,
    ChartContainer
  },

  data: () => ({
    //
  })
}
</script>
