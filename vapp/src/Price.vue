<template>
  <div v-if="isDrizzleInitialized" id="app">
    <!-- <drizzle-contract-form
      contractName="Price"
      method="setPrice"
      id="setprice"
      :placeholders="[
        'Base Price',
        'Cost per Minute',
        'Time of the Ride',
        'Cost per Mile',
        'Ride Distance',
        'Surge Boost Miltiplier',
        'Booking Fee',
      ]"
    /> -->

    <section class="vh-100">
      <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
          <div
            class="row d-flex justify-content-center align-items-center h-100"
          >
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
              <div class="card" style="border-radius: 15px">
                <div class="card-body p-5">
                  <img
                    src="./assets/v6_79.png"
                    class="rounded mx-auto d-block"
                    style="width: 150px; height: 150px"
                  />
                  <br />
                  <h2 class="text-uppercase text-center mb-5">
                    Calculate the total amount of Ride
                  </h2>

                  <form contractName="Price" method="setPrice">
                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="baseP" class="form-label"
                            >Base Fare</label
                          >
                          <input
                            v-model="baseP"
                            type="text"
                            class="form-control form-control-lg"
                            id="baseP"
                          />
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="costM" class="form-label"
                            >Cost per Muinte</label
                          >
                          <input
                            v-model="costM"
                            type="text"
                            class="form-control form-control-lg"
                            id="costM"
                          />
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="TimeR" class="form-label"
                            >Time Of The Ride</label
                          >
                          <input
                            v-model="TimeR"
                            type="text"
                            class="form-control form-control-lg"
                            id="TimeR"
                          />
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="CostMile" class="form-label"
                            >Cost Per Milee</label
                          >
                          <input
                            v-model="CostMile"
                            type="text"
                            class="form-control form-control-lg"
                            id="CostMile"
                          />
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="RideD" class="form-label"
                            >Ride Distance</label
                          >
                          <input
                            v-model="RideD"
                            type="text"
                            class="form-control form-control-lg"
                            id="RideD"
                          />
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="surgeBM" class="form-label"
                            >surge Boost Multiplier</label
                          >
                          <input
                            v-model="surgeBM"
                            type="text"
                            class="form-control form-control-lg"
                            id="surgeBM"
                          />
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <label for="bookingF" class="form-label"
                            >booking Fee</label
                          >
                          <input
                            v-model="bookingF"
                            type="text"
                            class="form-control form-control-lg"
                            id="bookingF"
                          />
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline datepicker">
                          <h3>
                            Price
                            <span class="" id="ResPrice"
                              ><drizzle-contract
                                contractName="Price"
                                method="getPrice"
                            /></span>
                          </h3>
                        </div>
                      </div>
                    </div>

                    <button
                      @click.prevent="onSubmit()"
                      type="button"
                      class="btn btn-primery btn-lg"
                      id="buttonCal"
                    >
                      Price Calculator
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <div v-else>Loading...</div>
</template>


<script>
import { mapGetters } from "vuex";

export default {
  name: "Price",
  components: {},
  computed: {
    ...mapGetters("drizzle", ["isDrizzleInitialized"]),
    ...mapGetters("drizzle", ["drizzleInstance"]),
  },
  data: {
    baseP: null,
    costM: null,
    TimeR: null,
    CostMile: null,
    RideD: null,
    surgeBMbookingF: null,
  },
  methods: {
    onSubmit() {
      this.drizzleInstance.contracts['Price'].methods["setPrice"].cacheSend(
        this.baseP,
        this.costM,
        this.TimeR,
        this.CostMile,
        this.RideD,
        this.surgeBM,
        this.bookingF,
      );
    },
  },
};
</script>

<style>
#buttonCal {
  background-color: rgb(108, 108, 231);
}
#setprice {
  margin-top: 10px;
}
</style>
