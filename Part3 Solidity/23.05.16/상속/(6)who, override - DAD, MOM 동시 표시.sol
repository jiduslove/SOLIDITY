// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract DAD {
    function who() virtual public pure returns(string memory) {
        return "dad from DAD";
    }
}

contract MOM {
    function who() virtual public pure returns(string memory) {
        return "mom from MOM";
    }
}

contract CHILD is DAD {
    function who() override public pure returns(string memory) {
        return "child from CHILD";
    }
}

contract CHILD2 is DAD, MOM {
    function who() override(DAD, MOM) public pure returns(string memory) {
        return "child from CHILD";
    }
}

contract CHILD3 is DAD {
    function who() override public pure returns(string memory) {
        return "child from CHILD";
    }

    function who(uint a) public pure returns(string memory, uint) {
        return ("dad from CHILD", a);
    }
}