// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
실습 가이드
1. Alice 160 -> setHeight
2. Bob 165 -> setHeight
3. John 170 -> setHeight
4. John -> getHeight, 결과값 보기.
*/

// 누구는 점수가 얼마야? 라고 물어볼때는 mapping이 좋다. (이름 = key값, 신장 = value값)
contract Mapping {
    //숫자를 검색해서 숫자가 나온다.(숫자형 => 숫자형)
    // key-value 쌍이 숫자-숫자로 연결되어있는 mapping a
    mapping(uint => uint) a;
    // mapping(자료형 => 자료형) mapping 이름;
    mapping(uint => string) b;
    mapping(string => address) c;
    // 2중 맵핑. 몇반에 누구라는 식으로 구분할 수 있다.
    //(한 데이터가 여러가지 방면에서 사용된다고 생각했을때 2중 맵핑을 사용하는것이 좋다)
    mapping(uint => mapping(string => uint)) score;

    // 이름을 검색하면 그 아이의 키를 반환하는 contract를 구현하고 싶다.
    mapping(string => uint) height;

    // 정보 넣기
    function setHeigth(string memory _name, uint _h) public {
        height[_name] = _h; // mapping이름[key 값] = value 값
    }

    // 정보 받기
    function getHeight(string memory _name) public view returns(uint) {
        return height[_name]; // mapping이름[key 값]
    } 

    // 정보 지우기
    function deleteHeight(string memory _name) public {
        delete height[_name];
    }
}