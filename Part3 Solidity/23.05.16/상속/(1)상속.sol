// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract DAD {
    function dad() virtual public pure returns(string memory) {
        return "dad from DAD";
    }
}

contract CHILD is DAD {
    function child() public pure returns(string memory) {
        return "child from CHILD";
    }
}