const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3');

const provider = ganache.provider();
const web3 = new Web3(provider);

const compiledToken = require('../build/contracts/COVRToken.json');
console.log(compiledToken);

let accounts;
let tokenAddress;
let token;

beforeEach(async () => {
  accounts = await web3.eth.getAccounts();
  console.log(accounts);

  token = await new web3.eth.Contract(JSON.parse(compiledToken.abi))
    .deploy({ data: compiledToken.bytecode })
  console.log('do I get the data? ==> ', data);
});


describe('COVR Token', () => {
  it('mints a COVR token for use in Crowd Coverage', () => {
    console.log('first test');
  });
});