/* eslint-disable no-undef */
const SushiToken = artifacts.require("./src/abis/SushiToken.sol");
const Exchange = artifacts.require("./src/abis/Exchange.sol");

module.exports = async function(deployer) {
  const accounts = await web3.eth.getAccounts()

  await deployer.deploy(SushiToken);

  const feeAccount = accounts[0]
  const feePercent = 10

  await deployer.deploy(Exchange, feeAccount, feePercent)
};
