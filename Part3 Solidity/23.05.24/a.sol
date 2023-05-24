// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Number {

    uint public a;

    function addNumber(uint _a, uint _b, uint _c, uint _d) public pure returns(uint) {
        return (_a+_b+_c+_d);
    } 

    function setNumber(uint num) public {
        a = num;
    }
}
// 외부컨트렉트
contract Testnet2 {
    
    Number public number;

    constructor(address numberAddress) {
        number = Number(numberAddress);
    }

    function newNumber(uint _a) public {
        number.setNumber(_a);
    }
}