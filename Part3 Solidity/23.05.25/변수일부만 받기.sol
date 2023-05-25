// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract AA {
    function numbers() public pure returns(uint, uint, uint) {
        return (1,2,3);
    }

    function numbers2() public view returns(uint, uint, uint) {
        (uint a, uint b, uint c) = numbers();

        return (a,b,c); // 1,2,3
    }

    function numbers3() public view returns(uint, uint) {
        (uint a, , uint c) = numbers();
        return (a,c); // 1,3
    }
}