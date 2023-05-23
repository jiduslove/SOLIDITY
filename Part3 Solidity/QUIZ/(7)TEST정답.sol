// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
숫자를 시분초로 변환하세요.(초를 주면 시,분으로 표현을 해라는 문제임.)
예) 100 -> 1분 40초, 600 -> 10분, 1000 -> 16분 40초, 5250 -> 1시간 27분 30초
*/

// 60진법으로 표현하고 싶으면 60으로 나누면 된다.
// 4진수로 나누면 나머지는 0,1,2,3 네가지가 나오고, 최대로 표현할 수 있는 수는 3이다.

// 시간으로 나누려면 3600(초), 분으로 나누려면 60(초). ex.(4500/3600 = 1시간, 나머지 900/60 = 15분 , 초는 그냥 60초로 나누면 됨.)
contract Q7 {
    function setTime(uint _n) public pure returns(uint, uint, uint) {
        uint hour = _n/3600 ;
        uint minute = (_n%3600)/60 ; // min = (_n/60)%60;
        uint second = _n%60 ;
        return(hour, minute, second);
    }

    Q5 q5 = new Q5();

    function concat(uint a) public view returns(string memory) {
        uint b = q5.getLength(a);
        uint[] memory c = new uint[](b);
        c = q5.divideNumber(a);
        for(uint i=0; i<c.length; i++) {
            c[i] += 48;
        }
        return string(abi.encodePacked(c));
    }

    function HMS(uint _n) public view returns(string memory) {
        (uint a, uint b, uint c) = setTime(_n);
        return string(abi.encodePacked(concat(a),"hours ", concat(b), "minutes ", concat(c), "seconds"));
    }
}

contract Q5 {
    function divideNumber(uint _n) public pure returns(uint[] memory) {
        uint[] memory b = new uint[](getLength(_n));

        uint i=getLength(_n);
        while(_n !=0) {
            b[--i] = _n%10;
            _n = _n/10;
        }
        return (b);
    }

    function getLength(uint _n) public pure returns(uint) {
        if(_n==0) {
            return 1;
        }

        uint a;
        while(_n >= 10**a) {
            a++;
        }
        return a;
    }
}

