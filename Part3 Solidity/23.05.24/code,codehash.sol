// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract ADDRESS {
    function getBalance(address _a) public view returns(uint) {
        return _a.balance;
    }

    function getCode(address _a) public view returns(bytes memory) {
        return _a.code;
    }

    function getCodeHash(address _a) public view returns(bytes32) {
        return _a.codehash;
    }

    //돈을 보낼 수 있는 방법 2가지. send, transfer(웬만하면 transfer 사용하세요.)
    // transfer : 문제 있으면 바로 error 띄워버림
    function transferAsset(address payable _a) public {
        _a.transfer(100);
    }
    // send : no error / true,false 반환
    function sendAsset(address payable _a) public returns(bool) {
        return _a.send(100);
    }
    
}