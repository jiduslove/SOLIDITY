// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// import를 하면 같이 comfile되서 들어온다.
// import를 한다는건 다른곳에 있는 아이를 가져온다는것.
// openzeppelin 같은 경우에는 믿고 가져와서 사용해도된다.

import './b.sol'; // import './위치/파일명';
import './d/dd.sol'; // 다른위치의 contract도 가져올 수 있다.

contract A {
    B_SmartContract b = new B_SmartContract();
    D_Contract d_con = new D_Contract();

    function add(uint _a, uint _b) public view returns(uint) {
        return b.add(_a, _b);
    }

    function multi(uint _a, uint _b) public view returns(uint) {
        return d_con.multiply(_a, _b);
    }
}