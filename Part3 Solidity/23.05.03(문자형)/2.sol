// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
실습 가이드
1. 0x16을 넣고 setA 실행하기
2. getA -> 0x16 결과 확인
3. setA2 
4. getA -> 0x3136 결과 확인 
5. abc를 넣고 setA3 실행하기
6. getA -> 0x616263 결과 확인
*/

// BYTES는 16진수로 표현된다.
// string 과 마찬가지로 bytes도 스페셜하다. (무겁다) 
// BYTES는 Deploy에 0x가 나오는데 0x는 16진수 형태로 저장이 되어있는것을 말해준다.
// Deploy에서 setA에 그냥 숫자를 넣으면 오류가 나는데 앞에 0x를 붙이면 문제가 해결된다.

contract BYTES {
     bytes a;

     function setA(bytes memory _a) public {
            a = _a;
     }
// 16을 아스키코드에서 보면 문자열 "1"은 31, "6"은 36이기 때문에 0x3136이 Deploy에 값이 나오는것임.(문자열로 값을 call했기 때문)
     function setA2() public {
         a = "16";
     }
// bytes형에서 문자형으로 변경이 가능.
     function setA3(string memory _a) public {
         a = bytes(_a);

     }

     function getA() public view returns(bytes memory) {
           return a;
     }

    
}