// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract DAD {
    function dad() public pure returns(string memory) {
        return "dad from DAD";
    }
}

contract MOM {
    function mom() public pure returns(string memory) {
        return "mom from MOM";
    }
}

contract CHILD2 is DAD, MOM {
    function child() public pure returns(string memory) {
        return "child from CHILD";
    }
}

// DAD, MOM, CHILD2의 함수들도 접근 가능
contract GRANDCHILD is CHILD2 {
    function grandChild() public pure returns(string memory) {
        return "grandChild";
    }
}