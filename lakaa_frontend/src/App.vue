<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
import './assets/base.css'
import NavBar from "./components/NavBar.vue";
</script>

<template>
  <main>
    <header>
      <NavBar />
    </header>

    <body class="body-App">
      <div class="wrapper">
        <RouterView />
      </div>
    </body>
  </main>
</template>

<style scoped>

</style>
