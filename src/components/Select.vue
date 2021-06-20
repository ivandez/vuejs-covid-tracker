<template>
  <div class="csss">
    <v-select class="select" label="Paises" :items="paises"></v-select>
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
