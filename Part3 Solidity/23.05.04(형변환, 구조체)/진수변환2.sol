// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
실습가이드
- d 없이
1. 0x10, 0x11, 0x12 넣어서 setABC 해보기 -> 오류 확인 incorrect data length
2. 0x10, 0x11, 0x0012 넣어서 setABC 해보기
3. getABC 결과 확인

- d 포함 후
1. 0xa665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3, 0x11, 0x1234, 0xa665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3 넣어서 setABCD 해보기
2. getABCD 결과 확인
3. 0xa665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3, 0x11, 0x1234, 0xa665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3 넣어서 setABCD 해보기
4. getABCD 결과 확인
*/


// bytes는 좀 더 엄격하고 섬세하다.
// uint는 256을 붙이지 않아도 상관없다. 
// bytes32는 bytes memory와 같을 수 있지만 다르다. 이유는 bytes32는 자리수가 정해져있지만 bytes memory 자리수가 정해져있지 않다.
// bytes memory는 동동적이여서 자리수가 정해져있지 않고, bytes 옆에 용량이 정해지면 정적이여서 자리수가 정해진다.
// bytes _d 는 기본적으로 64자리?


   contract BYTES {
    bytes a; // 사실상 무한정 -> 자리수 동적
    bytes1 b; // 자리수 정적(결정됨) -> 16진수 2자리
    bytes2 c; // 자리수 정적(결정됨) -> 16진수 4자리
    bytes32 d; // 자리수 정적(결정됨) -> 16진수 64자리


    function setABCD(bytes memory _a, bytes1 _b, bytes2 _c, bytes32 _d) public {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getABCD() public view returns(bytes memory, bytes1, bytes2, bytes32) {
        return(a,b,c,d);
    }
}