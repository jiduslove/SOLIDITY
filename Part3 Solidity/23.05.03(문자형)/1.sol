// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract UintandString {
    uint a; //숫자형 변수 a 선언
    string b; // 문자형 변수 b 선언

    // 상태변수로 지정한 아이들은 스토리지에 저장된다. 
    // storage 는 무겁다. 한번 저장이 되면 끝까지 저장이 된다.(체인에도 저장이 된다.)
    // calldata 와 memory는 휘발성을 가진 데이터다. 금방 사라진다.
    // calldata는 어딘가에 있는걸 가져오겠다는거고 memory는 calldata에 있는걸 가져오겠다는것.
    // 메모리가 저장되어있는 장소 (storage, calldata)

// view 나 pure를 못쓴다. 상태변수를 바꿔야하기 때문에..
    function setA(uint _a) public {
        a = _a;
    }
// 아무것도 선언을 안하면 값이 0이 나온다.
    function getA() public view returns(uint) {
        return a;
    }
// string을 사용하기 위해서는 memory 나 calldata로 불러온다.
// b의 값을 바꾼다.
    function setB(string memory _b) public {
        b = _b;
    }
// 상태변수에 있는 b를 불러온다.
// string 형태는 값이 비어서 나온다.
    function getB() public view returns (string memory){
        return b;
    }
// Deploy 에서 setBasC를 누르고 getB를 누르면 getB에 값이 C가 나온다.
    function setBasC() public {
        b = "c";
    }
// 아스키코드로 인해서 대소문자를 구분할 수 있음.
    function setBasC2() public {
        b = "C";
    }

    function setBasABC() public {
        b = "abc";
    }
//a와 b에 내가 원하는 값을 넣을 수 있는 함수
//그리고 a와 b의 값을 반환하는 함수를 각각 따로 만드세요.
    function setAB(uint _a, string memory _b) public {
        a = _a; b = _b;
    }

    function getAB() public view returns (uint, string memory){
        return (a, b);
    }
}