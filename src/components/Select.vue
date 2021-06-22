<template>
  <div>
    <v-select class="select" label="Paises" :items="countries" @change="getCountry"></v-select>
  </div>
</template>

<script>
export default {
  name: 'Select',
  props: ['countries'],
  methods: {
    getCountry (country) {
      this.$emit('get-country', country)
    }
  }
}
</script>
