const MerklePay = artifacts.require("MerklePay");

module.exports = function(deployer) {
  deployer.deploy(MerklePay);
};
