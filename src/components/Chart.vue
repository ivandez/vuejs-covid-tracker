<script>
import { Pie } from 'vue-chartjs'

export default {
  name: 'Chart',
  extends: Pie,
  mounted () {
    this.renderChart({
      labels: ['Infectados', 'Recuperados', 'Fallecidos'],
      datasets: [
        {
          backgroundColor: ['#7778e6', '#90e294', '#f87979'],
          data: [30, 30, 10]
        }
      ]
    }, { responsive: true, maintainAspectRatio: false })
  }
}

</script>

<style>
</style>
