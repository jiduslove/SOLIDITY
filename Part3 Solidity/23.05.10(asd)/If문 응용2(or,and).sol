// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//조건이 2개인 경우의 If문.
contract IF2 {

   // 50 이상이거나 10보다 작으면 -> or
   // 50 이상이고, 3의 배수이면 -> and ("3의배수는 3으로 나눴을때 0이다." 로 표현하면됨)
   function setNumber(uint _n) public pure returns(string memory) {
      if(_n>=70 || _n<=10) { // or -> || 
         return "A";
      } else if(_n>=50 && _n%3==0) {
         return "B";
      } else {
         return "C";
      }
   }
}

