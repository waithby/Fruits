<template>
<div>
  <div id="dh_detail">
   {{ttt}}
  </div>
  <button @click='increment'>{{counta}}</button>
</div>
</template>
<script type="text/javascript">
  import {mapGetters, mapActions} from "vuex";
  export default {
    data: function(){
      return {
        num:1
      }
    },
    computed: mapGetters(['ttt','counta']),
    methods:{
      ...mapActions(["increment"]),
      increment() {
        try {
         this.$store.dispatch("correctNum",this.num)
       }catch(error) {
         alert(error)
       }
     }
   }
 }
</script>