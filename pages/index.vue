
<template>
  <v-row justify="center" align="center">
    <v-col cols="12" sm="8" md="6">
      <v-card class="">
        <div>
      
          <v-text-field
            v-model="rut"
            label="Ingresa tu nombre"
            @input="validarRutChileno"
            
          ></v-text-field>
          <!-- <v-spacer></v-spacer> -->
          <p> Hola, tu nombre es {{ rut }}</p>
        </div>
      </v-card>
      <div v-if="validarRutChileno(rut) == true">
          <p> rut valido </p>
      </div>
      <div v-if="validarRutChileno(rut) == false">
        <p> rut invalido</p>
      </div>
      <!-- 
      <div>
       <v-list >
          <v-item v-for="animals in animals" :key="animals.name">
              {{ animals.name }}
          </v-item>
        </v-list>
      </div>
      -->
    </v-col>
  </v-row>
</template>

<script>
import { validateRUT} from 'validar-rut'
export default {
  name: 'IndexPage',
  data(){
    return{
      userName: 'Daniel',
      rut: '0',
      animals: [{
        index : 0,
        name: 'dog',
        type: 'mammal'
      }, {

        name: 'cat',
        type: 'mammal'
      }, {
        name: 'bird',
        type: 'bird'
      },
      {
        name: 'fish',
        type: 'fish'},
        {
          name: 'snake',
          type: 'reptile'
        },
        {
          name: 'frog',
          type: 'amphibian'
        }
    ],
    }
  },

  methods: {
      validarRutChileno(rut){
        if(rut === ''){ 
          return false
        }
        if(validateRUT(rut)===true){
          return true
        }else{
          return false 
        }
      }
    }
  }
</script>
