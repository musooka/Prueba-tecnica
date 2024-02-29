<template>
  <div class = "create_category_view">
      <input v-model="name"  type="text" placeholder = "Agregue nombre de categoria"><br>
      <input v-model="description"  type="text" placeholder = "Agregue descripcion de categoria"><br>
      <button @click="addCategory">Salvar categoria</button>
      <h1 v-if="isCreated"> {{msg}}</h1>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  name: 'CreateCategoryView',
  data() {
    return{
      name: "",
      description:"",
      isCreated:false,
      msg:""
    }
  },
  methods: {
    async addCategory() {
          const category = {
            name: this.name,
            description: this.description
          };
          const response = await axios.post('http://localhost:3000/categories',category)
          this.isCreated = true;
          console.log(response.status)
          if (response.status ===201){
            this.msg = "Categoria creada con exito"
          }else{
            this.msg = "Hubo problemas al crear la categoria"
          }
          }
      },
};
</script>
