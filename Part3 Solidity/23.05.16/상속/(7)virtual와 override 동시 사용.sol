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

/* CHILD2는 who라는 function을 DAD, MOM으로부터 받아오지만
동시에 GRANDCHILD에게 상속도 해줌. 따라서 virtual 와 override 동시에 선언*/
contract CHILD2 is DAD, MOM {
    function who() virtual override(DAD, MOM) public pure returns(string memory) {
        return "child from CHILD";
    }
}

contract GRANDCHILD is CHILD2 {
    function who() override public pure returns(string memory) {
        return "grandChild";
    }
}