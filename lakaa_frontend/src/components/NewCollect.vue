<script setup lang="ts">
import "../assets/NewCollect.css"
</script>

<template>
  <main>
    <div class="popup">
      <div class="popup-inner">
        <slot />
        <div class="form-container">
          <div class="input-labels">
            <p>Nom de l'association:</p>
            <p>Date de la collecte:</p>
            <p>Poids de la collecte:</p>
            <p>Nombre de personnes impliquées:</p>
          </div>
          <div class="input-boxes">
            <input v-model="newCollect.asso" placeholder="Association" />
            <input type=date v-model="newCollect.date" placeholder="Date" />
            <input v-model="newCollect.weight" placeholder="Poids" />
            <input v-model="newCollect.nb_ppl" placeholder="Nombre de Personnes" />
          </div>
        </div>
        <p class="error-msg" v-if="errorMessage != ''">{{ errorMessage }}</p>
        <div class="row-flex">
          <button @click="ToggleNewCollectPopup()" class="popup-close">Fermer</button>
          <button @click="CreateCollect()" class="save-button">Enregistrer</button>
        </div>
      </div>
    </div>
  </main>
</template>

<script lang="ts">
import axios from 'axios'
interface Collect {
  asso: string
  date: Date
  weight: number
  nb_ppl: number
}
export default {
  props: ["ToggleNewCollectPopup"],
  data() {
    return {
      newCollectID: -1,
      errorMessage: '',
      newCollect: {} as Collect
    }
  },
  methods: {
    async CreateCollect() {
      if (this.checkInputs() === true) {
        this.errorMessage = ''
        const collectToCreate = this.newCollect
        try {
          const resp = await axios.post("http://127.0.0.1:3000/api/collects", {
            asso: collectToCreate.asso,
            date: collectToCreate.date,
            weight: collectToCreate.weight,
            nb_ppl: collectToCreate.nb_ppl,
          })
          this.newCollectID = resp.data
        } catch (error) {
          if (axios.isAxiosError(error)) {
            this.errorMessage = error.message;
          } else {
            this.errorMessage = ('unexpected error: ' + error);
          }
        }
        if (this.errorMessage === '') { this.ToggleNewCollectPopup(); }
      }

    },
    checkInputs() {
      console.log(this.newCollect.date)
      if (!this.isOnlyLetters(this.newCollect.asso) || (!this.newCollect.asso)) {
        this.errorMessage = "Format du nom de l'association non supporté";
        return false;
      }
      else if (!this.newCollect.date) {
        this.errorMessage = "Veuillez rentrer une date";
        return false;
      }
      else if (isNaN(Number(this.newCollect.weight))) {
        this.errorMessage = "Mauvaise valeur du poids";
        return false;
      }
      else if (isNaN(Number(this.newCollect.nb_ppl))) {
        this.errorMessage = "Mauvaise valeur du nombre de personnes";
        return false;
      }
      return true;
    },
    isOnlyLetters(str: string) {
      return /^[a-zA-Z0-9\s]+$/.test(str);
    },
    isValidDate(date: any) {
      return date && Object.prototype.toString.call(date) === "[object Date]" && !isNaN(date);
    }
  }
}
</script>