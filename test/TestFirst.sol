// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/First.sol";

contract TestFirst {
    uint256 public initialBalance = 10 ether;

    function testAge() public {
        First meta = First(DeployedAddresses.First());
        meta.receivePayment{value: 2 ether}();

        Assert.equal(
            meta.checkBalance(),
            2 ether,
            "Value should be equal to 2 ether"
        );
    }
}
