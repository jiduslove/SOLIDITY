// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 문제를 많이 보거나 접하는게 중요할듯듯

contract BYTES {
     // 입력한 수의 제곱을 반환해주는 함수를 구현하세요.
     function square(uint a) public pure returns(uint) {
        return a**2;
    }

    // 입력한 수의 세제곱을 반환해주는 함수를 구현하세요.
    function cubic(uint a) public pure returns(uint) {
        return a**3;
    }

    // 입력한 수의 a의 b승을 반환해주는 함수를 구현하세요.
    function power(uint a, uint b) public pure returns(uint) {
        return a**b;
    }
}