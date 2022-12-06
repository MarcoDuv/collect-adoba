<script setup lang="ts">
import "../assets/HomeView.css"
</script>

<template>
  <main>
    <div class="carre-container">
      <h1>Bienvenue sur Adoba Collects</h1>
      <div class="button-container">
        <RouterLink to="/magasin"> <h2>Magasin</h2></RouterLink>
        <RouterLink to="/respRSE"> <h2>Responsable RSE</h2></RouterLink>
      </div>
    </div>
  </main>
</template>
