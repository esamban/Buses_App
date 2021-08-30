<template>
  <div v-if="isDrizzleInitialized" id="app">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
      <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div
            class="card"
            style="
              border-radius: 15px;
              background-color: rgba(248, 248, 248, 0.842);
            "
          >
            <div class="card-body p-5">
              <img
                src="./assets/v6_79.png"
                class="rounded mx-auto d-block"
                style="width: 150px; height: 150px"
              />
              <br />

              <!-- {{ ContractLicenseDriver }} -->
              <br />
              <div class="top-content">
                <div class="inner-bg">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-offset-2 text">
                        <h2 class="m-b-20 p-b-5 b-b-default f-w-600">
                          Company or Driver Information
                        </h2>
                      </div>
                    </div>
                    <br />
                    <div class="col-sm-12">
                      <div class="form-box">
                        <br />
                        <div class="form-bottom">
                          <br />
                          <div class="row">
                            <div class="col-sm-6">
                              <h3 class="m-b-10 f-w-600">Name</h3>
                              <h5 class="text-muted f-w-400" id="">
                                {{ ContractLicenseDriver[0] }}
                              </h5>
                            </div>
                            <div class="col-sm-6">
                              <h3 class="m-b-10 f-w-600">Email</h3>
                              <h5 class="text-muted f-w-400">
                                {{ ContractLicenseDriver[1] }}
                              </h5>
                            </div>
                          </div>
                          <br />
                          <div class="row">
                            <div class="col-sm-6">
                              <h3 class="m-b-10 f-w-600">Catogrical:</h3>
                              <h5 class="text-muted f-w-400">
                                {{ ContractLicenseDriver[2] }}
                              </h5>
                            </div>
                            <div class="col-sm-6">
                              <h3 class="m-b-10 f-w-600">License No</h3>
                              <h5 class="text-muted f-w-400">
                                {{ ContractLicenseDriver[3] }}
                              </h5>
                            </div>
                          </div>
                          <br />
                          <div class="row">
                            <div class="col-sm-6">
                              <h3 class="m-b-10 f-w-600">License State</h3>
                              <h5 class="text-muted f-w-400">
                                {{ date }}
                              </h5>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- <button
                        type="button"
                        class="btn btn-outline-primary"
                        onclick="getLocation()"
                      >
                        Get Started
                      </button> -->
                    </div>
                  </div>
                </div>
              </div>
              <!-- Footer -->
              <footer>
                <div class="container">
                  <div class="row">
                    <div class="col-sm-offset-2">
                      <div class="footer-border"></div>
                    </div>
                  </div>
                </div>
              </footer>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div v-else>Loading...</div>
</template>


<script>
import { mapGetters } from "vuex";
import VueMoment from "vue-moment";
import moment, { isMoment } from "moment-timezone";

const args = {
  contractName: "License",
  method: "getDriverInfo",
  methodArgs: ["0x537C37CDCB5CB057722C80ccc2587F9f751CD864"],
};
export default {
  name: "LicenseShowDriver",
  components: {
    moment,
    VueMoment,
  },
  computed: {
    ...mapGetters("drizzle", ["isDrizzleInitialized"]),
    ...mapGetters("drizzle", ["drizzleInstance"]),
    ...mapGetters("contracts", ["getContractData"]),
    ...mapGetters("accounts", ["activeAccount"]),
    accounts() {
      return [this.activeAccount];
    },

    ContractLicenseDriver() {
      return this.getContractData({
        contract: args.contractName,
        method: args.method,
        methodArgs: args.methodArgs,
      });
    },

    date() {
      var state;
      let dateNow = moment().format("YYYY-MM-DD");

      if (this.ContractLicenseDriver[4] > dateNow) {
        state = "Valid";
        return state;
      } else {
        state = "Invalid";
        return state;
      }
    },
  },
  methods: {},
  created() {
    this.$store.dispatch("drizzle/REGISTER_CONTRACT", args);
  },

  data: {},
};
</script>

<style>
</style>
