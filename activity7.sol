// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract activity7 {
    
    mapping(address => uint) public balances;
    event Withdrawn(address user, uint amount);

    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
        balances[msg.sender] += msg.value;
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Withdraw failed");
        emit Withdrawn(msg.sender, amount);
    }
}