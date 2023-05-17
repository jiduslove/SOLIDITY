// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MODIFIER2 {
    /*
    실습가이드
    1. setAasTwo()로 a 값 2로 만들기
    2. setA() 실행 후 결과 확인, getA()로 A 값 확인
    3. setAasTwo()로 a 값 다시 2로 만들기
    4. setA2() 실행 후 결과 확인, getA()로 A 값 확인
    */
    uint a;

    modifier plusOneBefore() {
        a++;
        _;
    }

    modifier plusOneAfter() {
        _;
        a++;
    }

    function setA() public plusOneBefore returns(string memory)  {
        if(a>=3) {
            return "A";
        } else {
            return "B";
        }
    }

    function setA2() public plusOneAfter returns(string memory)  {
        if(a>=3) {
            return "A";
        } else {
            return "B";
        }
    }

    function getA() public view returns(uint) {
        return a;
    }

    function setAasTwo() public {
        a = 2;
    }
}

contract MODIFIER3 {
    /*
    실습가이드
    1. setAasTwo()로 a 값 2로 만들기
    2. setA() 실행 후, getB2() 실행해서 결과 보기
    */
    uint a;
    string b;
    string[] b2;

    modifier plusOneBefore() {
        _;
        a++;
        _;
    }

    function setA() public plusOneBefore  {
        if(a>=3) {
            b = "A";
            b2.push(b);
        } else {
            b = "B";
            b2.push(b);
        }
    }

    function getA() public view returns(uint) {
        return a;
    }

    function getB() public view returns(string memory) {
        return b;
    }

    function getB2() public view returns(string[] memory) {
        return b2;
    }

    function setAasTwo() public {
        a = 2;
    }
}