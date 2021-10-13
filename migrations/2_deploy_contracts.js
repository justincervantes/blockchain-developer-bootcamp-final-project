const Donations = artifacts.require("./Donations.sol");
const Journal = artifacts.require("./Journal.sol");

module.exports = function(deployer) {
    deployer.deploy(Donations);
    deployer.deploy(Journal);
};
