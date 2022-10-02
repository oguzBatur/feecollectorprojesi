// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.7;

contract FeeCollector {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender; // Person executing the contract will be the owner.
    }

    // Receives money with the 'payable' keyword.
    receive() external payable {
        balance += msg.value;
    }

    // Withdraw money to given address.
    function withdraw(uint amount, address payable destAddr) public {
        // Do checks.
        require(msg.sender == owner, "Only the owner can withdraw"); // Check if the address executing the contract is the owner of the contract specified in the constructor.
        require(amount <= balance, "Not enough funds to withdraw."); // Check if the amount is less than the balance.

        // Perform transfer.
        destAddr.transfer(amount); // Addresses have this transfer function.

        // Deduct from the balance.
        balance -= amount;
    }
}
