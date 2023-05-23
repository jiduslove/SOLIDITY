// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract CONCAT {
    function concat1(string memory a, string memory b) public pure returns(string memory) {
        return string(abi.encodePacked(a,b));
    }

    function concat2(string memory a, string memory b) public pure returns(string memory) {
        return string.concat(a,":", a, a, " ", b, ":", b, b); // a:aab:bb
    }

    function concat3(uint a, string memory b, string memory c) public pure returns(string memory) {
        return string(abi.encodePacked(a,b,c));
    }

    function returnEncodePacked(uint a, string memory b) public pure returns(bytes memory, bytes memory) {
        return (abi.encodePacked(a), abi.encodePacked(b));
    }

    function concat4(uint a, uint b, uint c) public pure returns(string memory) {
        a = a+48;
        b = b+48;
        c = c+48;
        return string(abi.encodePacked(a,b,c));
    }

    function concat5(uint a) public pure returns(string memory) {
        
    }
}