// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract activity5 {

//Activity 1: Fixed Array
    uint[3] public favoriteNumbers;

    function setNumber(uint index, uint value) public {
        favoriteNumbers[index] = value;
    }

    function getNumber(uint index) public view returns (uint) {
        return favoriteNumbers[index];
    }


//Activity 2: Dynamic Array
    uint[] public scores;

    function addScore(uint value) public {
        scores.push(value);
    }

    function removeLast() public {
        scores.pop();
    }

    function getScore(uint index) public view returns (uint) {
        return scores[index];
    }

    function getTotalScores() public view returns (uint) {
        return scores.length;
    }


//Activity 3: Wallet Balances
    mapping(address => uint) public balances;

    function deposit(uint amount) public {
        balances[msg.sender] = balances[msg.sender] + amount;
    }

    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }

    function resetMyBalance() public {
        balances[msg.sender] = 0;
    }


//Activity 4: Struct + Array
    struct Student {
        string name;
        uint age;
        bool enrolled;
    }

    Student[] public students;

    function addStudent(string memory _name, uint _age, bool _enrolled) public {
        students.push(Student(_name, _age, _enrolled));
    }

    function getStudent(uint index) public view returns (string memory, uint, bool) {
        Student memory s = students[index];
        return (s.name, s.age, s.enrolled);
    }

    function getTotalStudents() public view returns (uint) {
        return students.length;
    }
}