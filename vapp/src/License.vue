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
              <div class="top-content">
                <div class="inner-bg">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-offset-2 text">
                        <h1>Register By</h1>
                      </div>
                    </div>
                    <br />
                    <div class="row">
                      <div class="col-sm-5 company">
                        <div class="form-box">
                          <div class="form-top">
                            <div class="form-top-left">
                              <h3>Company</h3>
                            </div>
                            <div class="form-top-right">
                              <i class="fa fa-key"></i>
                            </div>
                          </div>
                          <br />
                          <div class="form-bottom">
                            <div>
                              <form id="CompanyReg">
                                <div class="form-outline mb-4">
                                  <label class="form-label" for="CName"
                                    >Company Name</label
                                  >
                                  <input
                                    v-model="CName"
                                    type="text"
                                    id="CName"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label class="form-label" for="CEmail"
                                    >Company Email</label
                                  >
                                  <input
                                    v-model="CEmail"
                                    type="email"
                                    id="CEmail"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label class="form-label" for="CPhone"
                                    >Phone</label
                                  >
                                  <input
                                    v-model="CPhone"
                                    type="tell"
                                    id="CPhone"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label class="form-label" for="CLicense"
                                    >License No</label
                                  >
                                  <input
                                    v-model="CLicense"
                                    id="CLicense"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="row">
                                  <div class="col-md-6 mb-4">
                                    <div class="form-outline datepicker">
                                      <label for="CDate" class="form-label"
                                        >License Expird Date</label
                                      >
                                      <input
                                        v-model="CDate"
                                        type="date"
                                        class="form-control form-control-lg"
                                        id="CDate"
                                      />
                                    </div>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="CService" class="form-label"
                                      >Service Provided to:</label
                                    >
                                    <select
                                      class="
                                        select
                                        form-control form-control-lg
                                      "
                                      id="CService"
                                      v-model="CService"
                                    >
                                      <option value="Female">Female</option>
                                      <option value="Male">Male</option>
                                      <option value="Normal">Normal</option>
                                    </select>
                                  </div>
                                </div>

                                <div class="col-md-6 mb-4">
                                  <label for="CCatogrical" class="form-label"
                                    >Catogrical:</label
                                  >
                                  <select
                                    class="select form-control form-control-lg"
                                    id="CCatogrical"
                                    v-model="CCatogrical"
                                  >
                                    <option value="School">School</option>
                                    <option value="University">
                                      University
                                    </option>
                                    <option value="Supermarket">
                                      Supermarket
                                    </option>
                                    <option value="City to city">
                                      City to city
                                    </option>
                                    <option value="All">All</option>
                                  </select>
                                </div>
                                <div class="d-flex justify-content-center">
                                  <router-link to="licenseShow/Company">
                                    <button
                                      type="button"
                                      class="
                                        btn btn-success btn-block btn-lg
                                        gradient-custom-4
                                        text-body
                                      "
                                      id="btnCom"
                                      v-on:click="onSubmitComp()"
                                    >
                                      Company Register
                                    </button>
                                  </router-link>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-sm-1 middle-border"></div>
                      <div class="col-sm-1"></div>

                      <div class="col-sm-5 driver">
                        <div class="form-box">
                          <div class="form-top">
                            <div class="form-top-left">
                              <h3>Driver</h3>
                            </div>
                            <div class="form-top-right">
                              <i class="fa fa-pencil"></i>
                            </div>
                          </div>
                          <br />
                          <div class="form-bottom">
                            <div>
                              <form id="DriverReg">
                                <div class="form-outline mb-4">
                                  <label class="form-label" for="DName"
                                    >Your Name</label
                                  >
                                  <input
                                    v-model="DName"
                                    type="text"
                                    id="DName"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label class="form-label" for="DEmail"
                                    >Your Email</label
                                  >
                                  <input
                                    v-model="DEmail"
                                    type="email"
                                    id="DEmail"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label class="form-label" for="DId"
                                    >License No</label
                                  >
                                  <input
                                    v-model="DId"
                                    id="DId"
                                    class="form-control form-control-lg"
                                  />
                                </div>

                                <div class="form-outline mb-4">
                                  <label for="DCatogrical" class="form-label"
                                    >Catogrical:</label
                                  >
                                  <select
                                    class="select form-control form-control-lg"
                                    id="DCatogrical"
                                    v-model="DCatogrical"
                                  >
                                    <option value="School">School</option>
                                    <option value="University">
                                      University
                                    </option>
                                    <option value="Supermarket">
                                      Supermarket
                                    </option>
                                    <option value="City to city">
                                      City to city
                                    </option>
                                    <option value="All">All</option>
                                  </select>
                                </div>

                                <div class="row">
                                  <div class="col-md-6 mb-4">
                                    <div class="form-outline datepicker">
                                      <label for="DDate" class="form-label"
                                        >License Expird Date</label
                                      >
                                      <input
                                        v-model="DDate"
                                        type="date"
                                        class="form-control form-control-lg"
                                        id="DDate"
                                      />
                                    </div>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="DService" class="form-label"
                                      >Service Provided to:</label
                                    >
                                    <select
                                      class="
                                        select
                                        form-control form-control-lg
                                      "
                                      id="DService"
                                      v-model="DService"
                                    >
                                      <option value="Female">Female</option>
                                      <option value="Male">Male</option>
                                      <option value="Normal">Normal</option>
                                    </select>
                                  </div>
                                </div>

                                <div class="col-md-6 mb-4">
                                  <label
                                    class="form-label"
                                    for="form3Example4cdg"
                                    >Model</label
                                  >
                                  <input
                                    v-model="DModel"
                                    type=""
                                    id="form3Example4cdg"
                                    class="form-control form-control-lg"
                                  />
                                </div>
                                <div class="d-flex justify-content-center">
                                  <router-link to="licenseShow/driver">
                                    <button
                                      type="button"
                                      class="
                                        btn btn-success btn-block btn-lg
                                        gradient-custom-4
                                        text-body
                                      "
                                      id="btnDri"
                                      v-on:click="onSubmitDriv()"
                                    >
                                      Driver Register
                                    </button>
                                  </router-link>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
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
                      <p class="text-center text-muted mt-5 mb-0">
                        Have already an account?
                        <a
                          href="C:\Users\esam bn\Desktop\challenger\busesProject\src\html\rider\userLogin.html"
                          class="fw-bold text-body"
                          ><u>Login here</u></a
                        >
                      </p>
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
// import LicenseShowCompany from "./LicenseShowCompany.vue";
// import LicenseShowDriver from "./LicenseShowDriver.vue";

export default {
  name: "License",

  components: {
    // LicenseShowCompany,LicenseShowDriver
  },
  computed: {
    ...mapGetters("drizzle", ["isDrizzleInitialized"]),
    ...mapGetters("drizzle", ["drizzleInstance"]),
    ...mapGetters("contracts", ["getContractData"]),
    ...mapGetters("accounts", ["activeAccount"]),
  },

  methods: {
    onSubmitComp() {
      // console.log(address)
      this.drizzleInstance.contracts["License"].methods["addCompany"].cacheSend(
        this.activeAccount,
        this.CName,
        this.CPhone,
        this.CEmail,
        this.CCatogrical,
        // this.CService,
        this.CLicense,
        this.CDate
      );
    },
    onSubmitDriv() {
      this.drizzleInstance.contracts["License"].methods["addDriver"].cacheSend(
        this.activeAccount,
        this.DName,
        this.DEmail,
        this.DCatogrical,
        this.DId,
        this.DDate,
        this.DModel
      );
    },
  },
  data: function () {
    return {
      address: "",
      CName: "",
      CEmail: "",
      CPhone: null,
      CLicense: null,
      CDate: "",
      CCatogrical: "",
      CService: "",
      CCity: "",

      DName: "",
      DEmail: "",
      DCatogrical: "",
      DId: null,
      DDate: "",
      DService: "",
      DModel: null,
    };
  },
};
</script>

<style>
.company {
  background-color: rgba(231, 231, 231, 0.842);
  border-radius: 15px;
}
.driver {
  background-color: rgba(231, 231, 231, 0.842);
  border-radius: 15px;
}
.form-box {
  margin: 30px;
}
#btnDri {
  background-color: rgb(253, 247, 192);
}
#btnCom {
  background-color: rgb(80, 132, 245);
}
</style>
