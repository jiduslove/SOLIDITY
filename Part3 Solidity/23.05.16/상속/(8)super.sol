// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract DAD {
    function who() virtual public pure returns(string memory) {
        return "dad from DAD";
    }

    function name() public pure returns(string memory) {
        return "David";
    }

    function cal(uint a) public pure returns(uint) {
        return a*2;
    }
}

contract MOM {
    function who() virtual public pure returns(string memory) {
        return "mom from MOM";
    }
}

contract CHILD is DAD {
    function who() override public pure returns(string memory) {
        return super.who();
        // return "child from CHILD";
    }

    function fathersName() public pure returns(string memory) {
        return super.name();
    }

    function cal_Dad(uint _b) public pure returns(uint) {
        return super.cal(_b);
    }
}

contract CHILD2 is DAD, MOM {
    function who() virtual override(DAD, MOM) public pure returns(string memory) {
        return super.who();
        // return "child from CHILD";
    }
}

contract CHILD2_2 is MOM, DAD {
    function who() virtual override(MOM, DAD) public pure returns(string memory) {
        return super.who();
        // return "child from CHILD";
    }
}