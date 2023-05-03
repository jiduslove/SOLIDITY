// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
계산기를 만드세요.
2개의 input 값을 받아 더한 값을 반환하는 함수 Add, 곱한 값을 반환하는 함수 Mul, 뺀 값을 반환하는 Sub, 몫을 반환하는 Div를 구현하세요
*/

contract Basic2 {

    uint a=2;
    uint b=3;

    function Add(uint _a, uint _b) public pure returns(uint){
        return _a+_b;
    }

    function Mul(uint _a, uint _b) public pure returns(uint) {
        return _a*_b;
    }

    function Sub(uint _a, uint _b) public pure returns(uint) {
        return _a-_b;
    }

    function Div(uint _a, uint _b) public pure returns(uint, uint) {
        return (_a/_b, _a%_b);
    }


    // 상태변수도 변경하고 리턴으로 답도 받는것도 가능.
    function changeandAdd (uint _aa) public returns(uint) {
        a = _aa;
        return (a+b);
    }
}