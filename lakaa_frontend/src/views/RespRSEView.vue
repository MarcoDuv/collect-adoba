<script setup lang="ts">
import '../assets/RespRSEView.css'
</script>

<template>
  <main>
    <div class="container-rect">
      <div class="flex-col">
        <h1>Liste des collectes</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Association</th>
          </tr>
          <tr v-for="collect in collects">
            <td>{{ collect.id }}</td>
            <td>{{ collect.date }}</td>
            <td>{{ collect.asso.toUpperCase() }}</td>
          </tr>
        </table>
      </div>
    </div>
  </main>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import axios from 'axios'
interface Collect {
  id: number
  asso: string
  date: Date
  weight: number
  nb_ppl: number
}
export default defineComponent({
  name: 'RespRSEView',
  data() {
    return {
      collects: [] as Collect[],
    }
  },
  methods: {
    async fetchCollects() {
      const collectsResponse = await axios.get<{ data: Collect[] }>('http://127.0.0.1:3000/api/collects')
      this.collects = collectsResponse.data.data
    },
  },
  async mounted() {
    await this.fetchCollects()
  }
})
</script>