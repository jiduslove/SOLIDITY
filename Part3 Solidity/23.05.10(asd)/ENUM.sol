// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


// ENUM = 열거형 ()
contract ENUM {
    // enum 변수명 안에 새로운 상태를 넣는것은 힘듦.
   enum Food { //enum 변수명 {변수1, 변수2, 변수3, 변수4}
      Chicken, 
      Suish, 
      Bread, 
      Coconut
   }

   Food a; // Food형 변수 a
   Food b; // Food형 변수 b
   Food c;

   function setA() public {
      a = Food.Chicken;
   }

   function setB() public {
      b = Food.Suish;
   }

   function setC() public {
      c = Food.Bread;
   }

   function getABC() public view returns(Food, Food, Food) {
      return (a,b,c);
   }

   //uint8과 형변환 가능
   function getABC2() public view returns(uint8, uint8, uint8) {
      return (uint8(a),uint8(b),uint8(c));
   }
}

contract ENUM2 {
   enum color {
       red,
       yellow,
       green,
       blue,
       purple,
       rainbow
   }

   color c;

   function setC() public {
       c = color.red;
   }

   function getC() public view returns(color) {
       return c;
   }
   

}

contract ENUM3 {
   enum Status {
      neutral,
      high,
      low
   }
   Status st;

   uint a=5;

   function higher() public {
      a++;
      //7 이상
      if(a>=7) {
         st = Status.high;
      }
   }

   function lower() public {
      a--;
      // 3이하
      if(a<=3) {
         st = Status.low;
      }
   }

   function setA() public {
       if(a >= 7) {
            st = Status.high;
        } else if(a<= 3) {
            st = Status.low;
        } else {
            st = Status.neutral;
        }
   }

   function getA() public view returns(uint) {
      return a;
   }

   function getST() public view returns(Status) {
      return st;
   }
}
