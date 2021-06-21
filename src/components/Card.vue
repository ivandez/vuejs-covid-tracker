<template>
  <div>
    <br>
    <v-card elevation="2" outlined>
      <v-card-title>{{title}}</v-card-title>
      <v-card-subtitle>{{cases.toLocaleString("es-ES")}}</v-card-subtitle>
      <v-card-text>{{text}} hasta {{date}}</v-card-text>
    </v-card>
  </div>
</template>

<script>
export default {
  name: 'Card',
  props: ['title', 'cases', 'text', 'date']
}
</script>

<style></style>
