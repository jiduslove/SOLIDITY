// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MODIFIER5 {
    uint public mutex=0;

    modifier m_check {
        mutex++;
        _;
        mutex--;
    }

    modifier shouldBeZero {
        require(mutex==0, "someone is using");
        _;
    }

    modifier shouldBeOne {
        require(mutex==1, "someone is using");
        _;
    }

    modifier shouldBeOne2 {
        _;
        require(mutex==1, "someone is using");
    }

    modifier shouldBeZero2 {
        _;
        require(mutex==0, "someone is using2");
    }

    function inAndOut() public m_check returns(string memory){
        return "Done";
    }

    function inAndOut2() public m_check shouldBeZero returns(string memory){
        return "Done";
    }

    function inAndOut2_2() public m_check shouldBeZero2 returns(string memory){
        return "Done";
    }

    function inAndOut2_3() public m_check shouldBeZero2 returns(string memory){
        mutex--;
        return "Done";
    }

    function inAndOut2_4() public m_check shouldBeOne returns(string memory){
        return "Done";
    }

    function inAndOut2_5() public m_check shouldBeOne returns(string memory){
        mutex--;
        return "Done";
    }

    function inAndOut2_6() public m_check shouldBeOne2 returns(string memory){
        mutex--;
        return "Done";
    }

    function inAndOut3() public shouldBeZero m_check returns(string memory){
        return "Done";
    }

    function occupy() shouldBeZero public {
        mutex++;
    }

    function vacancy() public {
        mutex--;
    }
}