// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract structuWithMapping {

    struct user {
        string name;
        address addr;
        string[] suggested;
        mapping(string=>bool) voted;
    }

    user[] Users; // 오류해결을 위해 일단 넣음.

    function setUser(string memory _name) public {
        user storage _newuser = Users.push();
    }

	function getUsers() public view returns(uint) {
        return(Users.length);
    }

    function getUser(uint _n) public view returns(string memory, address, string[] memory) {
        return (Users[_n].name, Users[_n].addr, Users[_n].suggested);
    }

}