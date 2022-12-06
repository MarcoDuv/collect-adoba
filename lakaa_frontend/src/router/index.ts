import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";
import MagasinView from "../views/MagasinView.vue";
import RespRSEView from "../views/RespRSEView.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "home",
      component: HomeView,
    },
    {
      path: "/magasin",
      name: "magasin",
      component: MagasinView,
    },
    {
      path: "/respRSE",
      name: "responsable rse",
      component: RespRSEView,
    },
  ],
});

export default router;
