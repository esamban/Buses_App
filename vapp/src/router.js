import Vue from 'vue'
import Router from 'vue-router'
import Price from "./Price.vue";
import License from './License.vue';
import LicenseShow from './LicenseShowCompany.vue';
import LicenseShowDriver from './LicenseShowDriver.vue';

Vue.use(Router)

export default new Router({
    routes: [
        {
            path:'/price',
            name:'Price',
            component:Price
        },
        {
            path:'/license',
            name:'License',
            component:License
        },
        {
            path:'/licenseShow/Company',
            name:'LicenseShowCompany',
            component:LicenseShow
        },
        {
            path:'/licenseShow/driver',
            name:'LicenseShowDriver',
            component:LicenseShowDriver
        },
    ]
});
