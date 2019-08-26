
const util = require("ethereumjs-util");
const ABI = require('ethereumjs-abi');

const MerklePay = artifacts.require("./MerklePay");

contract('MerklePay', function(accounts) {
  
    it("the first account has all tokens except Owner tokens", async () => {
      merklePay = await MerklePay.deployed()
      assert.equal(initialSupply, balance0, "")
    })
})
