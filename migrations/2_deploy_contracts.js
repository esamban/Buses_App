
const Price = artifacts.require("Price");
const License = artifacts.require("License");

module.exports = function(deployer) {
  deployer.deploy(Price);
  deployer.deploy(License);
};
