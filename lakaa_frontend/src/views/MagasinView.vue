<script setup lang="ts">
import NewCollect from "@/components/icons/NewCollect.vue";
import "../assets/MagasinView.css"
</script>

<template>
  <main>
    <div class="container-rect">
      <img class="img-food" src="../assets/images/foodPackage.jpg">
      <div class="description">
        <h2>Collectes de denrées alimentaires</h2>
        <button>Déclarer</button>
        <NewCollect>
          <h2>MyPopup</h2>
        </NewCollect>
      </div>
    </div>
  </main>
</template>