// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract activity6 {

    event ActionPerformed(address user, string action);

    function logAction(string memory _action) public {
        emit ActionPerformed(msg.sender, _action);
    }


    event VoteCasted(address indexed voter, uint proposalId, bool choice);

    function vote(uint _proposalId, bool _choice) public {
        emit VoteCasted(msg.sender, _proposalId, _choice);
    }
}