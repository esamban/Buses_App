<template>
  <!-- <div v-if="isDrizzleInitialized" id="app"> -->

    <div>
      <!-- <app-header></app-header> -->
    <!-- <Price/> -->
     <!-- <LicenseShow/>
     <License/> -->
     <router-view/>
    <!-- <AppGoogleMap/> -->
 
    </div>
  <!-- </div> -->

  <!-- <div v-else>Loading...</div> -->
</template>

<script>
import Price from "./Price.vue";
import License from './License.vue';
import LicenseShow from './LicenseShowCompany.vue';
import LicenseShowDriver from './LicenseShowDriver.vue';
import AppGoogleMap from './AddGoogleMap.vue';

import { mapGetters } from "vuex";

export default {
  name: "app",
  components: {
    Price,License,LicenseShow,LicenseShowDriver,AppGoogleMap
  },

  computed: mapGetters("drizzle", ["isDrizzleInitialized"]),
};

</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #495f75;
  margin-top: 60px;
}
</style>
