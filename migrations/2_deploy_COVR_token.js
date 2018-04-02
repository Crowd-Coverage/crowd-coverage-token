var COVRToken = artifacts.require('../contracts/COVRToken.sol');

module.exports = (deployer, network, accounts) => {
  deployer.deploy(COVRToken, 100000, accounts[0]);
};