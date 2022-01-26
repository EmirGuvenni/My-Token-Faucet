const MyTokenFaucet = artifacts.require("MyTokenFaucet");

module.exports = function (deployer, _, accounts) {
  deployer.deploy(MyTokenFaucet, "My Token Faucet", "MYTKN");
};
