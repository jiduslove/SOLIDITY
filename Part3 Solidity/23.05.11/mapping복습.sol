// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Map {
    mapping(uint => uint) setNum;
    mapping(string => string) setSt;
    // 이름, 숫자, 지갑이 들어간 구조체체
    struct wallet {
        string name;
        uint number;
        address account;
    }
    //이름을 넣어서 지갑을 받을 수 있는거거
    mapping (string => wallet) strToWellet;
    //wallets에 새로운 wallet을 추가하는 함수수
    wallet[] wallets;

    function setWallets(string memory _name, uint _number, address _account) public {
        wallets.push(wallet(_name, _number, _account));
    }
    //특정 번호의 wallet을 받아오기기
    function getwellets(uint _n) public view returns(wallet memory) {
        return wallets[_n-1];
    }
    //특정 n번째 wallet을 가져오는 함수수
    function getwalletAddress(uint _n) public view returns(address) {
        return wallets[_n-1].account;
    }
    //모든 wallet을 반환시켜주는 함수수
    function getAll() public view returns(wallet[] memory) {
        return wallets;
    }

    // * local testnet에서 진행에서 타인은 이용 못함.
    // * 이더리움 메인넷에선 진짜 돈 들어감.
}

contract Fix {
    // 숫자형만 들어가는 근데 자리는 10자리로 고정된 배열.
    uint[10] ten;
    // 그냥 무한정으로 들어가는 편한 배열.
    uint[] infinity;
    uint count;

    //ten이라는 배열에 정보를 넘는 함수
    //이미 10이라는 자리가 정해져 있어서 push 사용 못함.
    function setTen(uint _n, uint _num) public {
        ten[_n-1] = _num;
    }
    
    function autosetTen(uint _n) public {
        ten[count++] = _n;
    }
    //b라는 배열에 정보를 넣는 함수
    function setInfinity(uint _n) public {
        infinity.push(_n);
    }

    // b에 원하는 숫자 껴넣을 수 있는 함수.
    function setInfinity2(uint _n, uint _num) public {
        infinity[_n-1] = _num;
    }

    //ten배열에 있는 숫자를 모두 더해주는 함수
    function addTen() public view returns(uint) {
        uint outcome;
        for(uint i=0; i<ten.length; i++) {
            outcome = outcome + ten[i];
        }
        return outcome;
    }

}