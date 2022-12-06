<script setup lang="ts">
import NewCollect from "@/components/NewCollect.vue"
import "../assets/MagasinView.css"
</script>

<template>
  <main>
    <div class="container-rect">
      <img class="img-food" src="../assets/images/foodPackage.jpg">
      <div class="description">
        <h2>Collectes de denrées alimentaires</h2>
        <button @click="toggleNewCollectPopup()">Déclarer</button>
        <NewCollect v-if="newCollectAsked" :ToggleNewCollectPopup="() => toggleNewCollectPopup()">
          <h3>Déclaration d'une collecte</h3>
        </NewCollect>
      </div>
    </div>
  </main>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'MagasinView',
  components: {},
  data() {
    return {
      newCollectAsked: false
    }
  },
  methods: {
    toggleNewCollectPopup() {
      this.newCollectAsked = !this.newCollectAsked
    }
  }
})
</script>