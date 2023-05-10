// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract IF {
   // 점수가 50점이상이면 P, 아니면 F
   function setGrade(uint _score) public pure returns(string memory) {
      if(_score >=50) { /*if(조건문), <- 이번 경우는 _score가 50보다 높을 때*/
         return "P";
      } else {
         return "F";
      }
   }

   // 점수가 70점이상이면 A, 50점 이상이면 B, 아니면 C반
   function setGrade2(uint _score) public pure returns(string memory) {
      if(_score >=70) {
         return "A";
      } else if(_score >=50) {
         return "B";
      } else {
         return "C";
      }
   }

   // 짝수면 even array에, 홀수면 odd array에 넣기
   uint[] even;
   uint[] odd;

   function evenOrOdd(uint _n) public {
      if(_n%2==0) {
         even.push(_n);      
      } else {
         odd.push(_n);
      }
   }

   function getEvenAndOdd() public view returns(uint[] memory, uint[] memory) {
      return (odd, even);
   }

   // 3으로 나누었을 때, 나머지가 1이면 A, 2이면 B, 0이면 C
   uint[] A;
   uint[] B;
   uint[] C;

   function ternary(uint _n) public {
      if(_n%3==1) {
         A.push(_n);
      } else if(_n%3==2) {
         B.push(_n);
      } else {
         C.push(_n);
      }
   }
}