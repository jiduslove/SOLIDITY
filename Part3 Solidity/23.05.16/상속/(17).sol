// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
contract B에서는 새롭게 A를 선언하니 A 선언에 필요한 input 값 2개를 넣어주고
contract B2에서는 기존의 A를 참조하려고 하니 A 선언에 필요한 input 값 2개가 아닌, contract의 주소를 넣어주어야 함.
*/

contract A {
    uint public a;
    uint public b; 
    constructor(uint _a, uint _b) {
        a = _a;
        b = _b;
    }
}

contract B {
    A a = new A(1,2);
    A b;

    constructor(uint _a, uint _b) {
        b = new A(_a, _b);
    }
}

contract B2 {
    A b;

    constructor(address _a) {
        b = A(_a);
    }
}