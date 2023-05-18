// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract WHILE {
    function while_1(uint _n) public pure returns(uint){
        uint a;
        while(_n > a) {
            a++;
        }
        return a;
    }

    uint[] public a;
    function while_2(uint _n) public returns(uint[] memory){
        while(a.length < _n) {
            a.push(a.length+1);
        }
        return a;
    }

    function while_3(uint _n) public pure returns(uint) {
        uint _a;
        while(_n >= 10**_a) {
            _a++;
        }
        return _a;
    }
}