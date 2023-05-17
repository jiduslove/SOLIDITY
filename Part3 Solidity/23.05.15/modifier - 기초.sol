// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MODIFIER {
    uint a;

    modifier lessThanFive() {
        require(a<5, "should be less than five");
        _; // 함수가 실행되는 시점
    }

    function aPlus() public {
        a++;
    }

    function aMinus() public {
        a--;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function doubleA() public lessThanFive {
        a = a*2;
    }

    function plusTen() public lessThanFive {
        a += 10;
    }
}