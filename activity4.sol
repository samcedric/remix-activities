// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract activity4 {
    function checkTemperature(int temp) public pure returns (string memory) {
        if (temp <= 0) {
            return "Freezing point";
        } else if (temp >= 100) {
            return "Boiling point";
        } else {
            return "Normal temperature";
        }
    }

    function evaluateGrade(uint score) public pure returns (string memory) {
        if (score >= 90) {
            return "A";
        } else if (score >= 80) {
            return "B";
        } else if (score >= 70) {
            return "C";
        } else {
            return "F";
        }
    }

    function checkSpeed(uint speed) public pure returns (string memory) {
        if (speed > 100) {
            return "Over speeding";
        } else {
            return "Within speed limit";
        }
    }

    function checkAccess(uint age) public pure returns (string memory) {
        if (age < 13) {
            return "Not allowed";
        } else if (age <= 17) {
            return "Allowed with guardian";
        } else {
            return "Allowed";
        }
    }

    function sumToN(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    function sumEvenNumbers(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= n; i++) {
            if (i % 2 == 0) {
                sum += i;
            }
        }
        return sum;
    }
}