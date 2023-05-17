// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MODIFIER4 {
    struct Person {
        uint age;
        string name;
    }

    Person P;

    modifier overTwenty(uint _age, string memory _criminal) {
        require(_age >20, "Too young");
        require(keccak256(abi.encodePacked(_criminal)) == keccak256(abi.encodePacked("Bob")), "Bob is criminal. She can't buy it");
        _;
    }

    function buyCigar(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function buyAlcho(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function buyGu(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function setP(uint _age, string memory _name) public {
        P = Person(_age, _name);
    }

    function buyCigar2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

    function buyAlcho2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

    function buyGu2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

}