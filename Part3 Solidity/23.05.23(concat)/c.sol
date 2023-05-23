// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/Strings.sol";

// 외부에 있는것을 받아오려고 함.
// library는 특별한 형태의 contract.
contract C {
    function UtoS(uint _n) public pure returns(string memory) {
        return Strings.toString(_n);
    }
}