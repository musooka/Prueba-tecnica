<template>
    <div class = "create_view">
        <input v-model="title"  type="text" placeholder = "Agregue titulo"><br>
        <input v-model="description"  type="text" placeholder = "Agregue descripcion "><br>
        <input v-model="year"  type="text" placeholder = "Agregue fecha"><br>
        <input v-model="rental_duration"  type="text" placeholder = "Duracion de renta"><br>
        <input v-model="rating"  type="text" placeholder = "Rating"><br>
        <input v-model="duration"  type="text" placeholder = "Duracion"><br>
        <input v-model="rental_price"  type="text" placeholder = "Precio de renta"><br>
        <select v-model="category">
            <option v-for="(category,key) in categories.data" :key = "key" :value="key">{{category.name}}</option>\
        </select><br>
        <button @click="addFilm">Salvar pelicula</button>
        <h1 v-if="isCreated"> {{msg}}</h1>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  import { mapState } from 'vuex';
  export default {
    name: 'CreateView',
    data() {
      return{
        title: "",
        description:"",
        year:"",
        rental_duration:"",
        rating:"",
        duration:"",
        rental_price:"",
        isCreated:false,
        msg:""
      }
    },
    computed: {
        ...mapState(["categories"])
    },
    mounted(){
        this.$store.dispatch("categories/getData");
    },
    methods: {
      async addFilm() {
            const film = {
              title: this.title,
              description: this.description,
              year: this.year,
              rental_duration: this.rental_duration,
              rating: this.rating,
              duration: this.duration,
              rental_price: this.rental_price
            };
            const response = await axios.post('http://localhost:3000/films',film)
            this.isCreated = true;
            console.log(response.status)
            if (response.status ===201){
              this.msg = "Pelicula creada con exito"
            }else{
              this.msg = "Hubo problemas al crear la pelicula"
            }
            }
        },
  };
  </script>
  