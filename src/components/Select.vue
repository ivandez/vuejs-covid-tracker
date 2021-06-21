<template>
  <div>
    <v-select class="select" label="Paises" :items="countries"></v-select>
  </div>
</template>

<script>
export default {
  name: 'Select',
  props: ['countries']
}
</script>
