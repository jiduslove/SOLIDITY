// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract BYTESTOSTRING {
    function bytes1ToString(bytes1 a) public pure returns(string memory) {
        string memory _a = string(abi.encodePacked(a));
        return _a;
    }
}