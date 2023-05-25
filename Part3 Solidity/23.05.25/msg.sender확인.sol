// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MSGSENDER {
    function A() public view returns(address) {
        address a = msg.sender;
        return a;
    }

    function B() public view returns(address) {
        address b = A();
        return b;
    }
}

contract MSGSENDER2 {
    MSGSENDER msgsender = new MSGSENDER();

    function C() public view returns(address) {
        address c = msgsender.A();
        return c;
    }

    function D() public view returns(address) {
        address d = msgsender.B();
        return d;
    }
}

contract MSGSENDER3 {
    address[] list;

    function push() public {
        list.push(msg.sender);
    }

    function push2() public {
        push();
    }

    function getList() public view returns(address[] memory) {
        return list;
    }
}