// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract First {
    function receivePayment() public payable {}

    function checkBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
