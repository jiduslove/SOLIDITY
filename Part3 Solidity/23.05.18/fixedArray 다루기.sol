// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// fixedArray 다루기 - state variable 쓰지 않고 길이 추적 및 자동 갱신
contract FixedDynamic {
    uint[] public a;
    uint[4] public b;
    uint count;

    function getAB() public view returns(uint[] memory, uint[4] memory) {
        return (a,b);
    }

    function pushA(uint _n) public {
        a.push(_n);
    }

    function pushB(uint _a, uint _b) public {
        b[_a-1] = _b;
    }

    function pushB2(uint _a) public {
        b[count] = _a;
        count++;
    }

    function pushB3(uint _a) public {
        require(_a !=0);
        if(getLengthOfB()==4) {
            delete b;
        }
        
        b[getLengthOfB()] = _a;
    }
    
    function getLengthOfB() public view returns(uint) {
        for(uint i=0; i<4; i++) {
            if(b[i]==0) {
                return i;
            }
        }
        return 4;
    }


}