// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Address {
    address a;

    // contract의 address
    function getAddress() public view returns(address) {
        return address(this);
    }

    // msg.sender의 address
    // 내 주소를 보는방법. (msg.sender는 누가 이 함수를 건드렸는지를 나타냄.)
    function getMyAddress() public view returns(address) {
        return address(msg.sender);
    }
    // 나의 가스값을 확인할 수 있다.
    function getMyBalance() public view returns(uint) {
        return address(msg.sender).balance;
    }
    // 해당 컨트랙트의 balance를 알아볼 수 있다.
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function setA(address _a) public {
        a = _a;
    }
    
    function getA() public view returns(address) {
        return a;
    }
    /*
    // x
    function setA(bytes20 _a) public {
        a = _a;
    }

    // x
    // bytes20과 address는 길이만 같고, 형이 일치한다고 볼 수 없다. 완벽하게 address형으로 사용할 수는 없다.
    function getA() public view returns(bytes20) {
        return a;
    }
    */
   
}
