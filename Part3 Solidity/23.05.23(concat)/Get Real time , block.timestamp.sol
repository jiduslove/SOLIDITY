// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract TIMESTAMP {
    uint public time = block.timestamp; // 배포시의 시간

    function getCurrentTime() public view returns(uint) {
        return block.timestamp; // 실행할 때 마다 현재시간 반환
    }
}