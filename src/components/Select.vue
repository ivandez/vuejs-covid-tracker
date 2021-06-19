<template>
  <div>
    <v-select label="Paises" :items="paises"></v-select>
  </div>
</template>

<script>
export default {
  name: 'Select',
  data: () => ({
    paises: ['Venezuela', 'EEUE', 'RUSIA']
  })
}
</script>

<style></style>
