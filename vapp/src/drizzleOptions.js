
import Price from './contracts/Price.json'
import License from './contracts/License.json'

const options = {
  web3: {
    block: false,
    fallback: {
      type: 'http',
      url: 'http://127.0.0.1:7545'
    }
  },
  contracts: [Price,License],
 
  polls: {
    accounts: 15000
  }
}

export default options
