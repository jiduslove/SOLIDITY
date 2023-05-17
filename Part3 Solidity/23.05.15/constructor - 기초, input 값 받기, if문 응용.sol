// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract CONSTRUCTOR {
    uint a;
    uint b;

    constructor() {
        a = 7;
        b = 4;
    }
    function setA() public {
        a = 5;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function getB() public view returns(uint) {
        return b;
    }
}

contract CONSTRUCTOR2 {
    uint a;

    constructor(uint _a) {
        a = _a;
    }

    function getA() public view returns(uint) {
        return a;
    }
}

contract CONSTRUCTOR3 {
    struct Student {
        string name;
        uint number;
    }

    Student s;

    constructor(string memory _name, uint _number) {
        s = Student(_name, _number);
    }

    function getStudent() public view returns(Student memory) {
        return s;
    }
}

contract CONSTRUCTOR4 {
    uint a;

    constructor(uint _a) {
        if(_a>5) {
            a = _a;
        } else {
            a = _a*2;
        }
    }

    function getA() public view returns(uint) {
        return a;
    }
}