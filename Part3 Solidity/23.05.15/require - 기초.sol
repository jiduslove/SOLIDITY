// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract REQUIRE {
    /*
    1. 5, 15 각각 Require()에 넣어보기
    2. onlyAlice에 alice 한번, bob 한번 input 값으로 넣어보기
    */
    function Require1(uint _n) public pure returns(uint) {
        require(_n<10, "input should be lower than 10"); // require(조건문, "만족하지 않을 시의 메세지")
        return _n*3;
    }

    function getName(string memory _name) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_name));
    }

    function onlyAlice(string memory _name) public pure returns(bool) {
        require(getName(_name) == 0x9c0257114eb9399a2985f8e75dad7600c5d89fe3824ffa99ec1c3eb8bf3b0501);
        return true;
    }
}