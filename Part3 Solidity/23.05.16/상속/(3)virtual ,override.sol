// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract DAD {
    function dad() virtual public pure returns(string memory) {
        return "dad from DAD";
    }
}

contract MOM {
    function mom() public pure returns(string memory) {
        return "mom from MOM";
    }
}

contract CHILD is DAD {
    function child() public pure returns(string memory) {
        return "child from CHILD";
    }
}

contract CHILD2 is DAD, MOM {
    function child() public pure returns(string memory) {
        return "child from CHILD";
    }
}

contract CHILD3 is DAD {
    function child() public pure returns(string memory) {
        return "child from CHILD";
    }

    function dad() override public pure returns(string memory) {
        return "dad from CHILD";
    }
}