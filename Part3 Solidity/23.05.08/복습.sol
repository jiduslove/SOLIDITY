// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract review {
//이름, 번호, 생년월일을 담은 student라는 구조체와 제목, 번호, 날짜를 담은 class라는 구조체를 선언하시오.

    struct student {
        string name;
        uint number;
        uint birth;

    }

    struct class {
        string title;
        uint number;
        uint date;

    }
//student형 변수 s 와 class형 변수 c를 선언하시오.
    student S;
    class C;
//s에 값을 부여하는 함수 setS와 c에 값을 부여하는 함수 setC를 각각 구현하시오
    function setS(string memory _name, uint _number, uint _birth) public {
        S = student(_name, _number, _birth);
    }

    function setC(string memory _title, uint _number, uint _date) public {
        C = class(_title, _number, _date);
    }

    function getS() public view returns(student memory) {
        return S;
    }
//변수 s의 값을 반환받는 함수 getS와 c의 값을 반환받는 함수 getC를 각각 구현하시오.
    function getC() public view returns(class memory) {
        return C;
    }
//student형 변수들이 들어가는 array students와 class형 변수들이 들어가는 array classes를 선언하시오.
    student[] students;
    class[] classes;

//students에 student 구조체를 넣는 pushStudent 함수를 구현하세요.
    function pushStudent(string memory _name, uint _number, uint _birth) public {
        students.push(student(_name, _number, _birth));
    }
//classes에 class 구조체를 넣는 pushClass 함수를 구현하세요.
    function pushClasses(string memory _title, uint _number, uint _date) public {
        classes.push(class(_title, _number, _date));
    }

}

contract review2 {
//숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요.
   struct D {
       uint a;
       string b;
       bytes2 c;
   }
//D형 변수 dd를 선언하세요.
   D dd;
//dd에 값을 부여하는 setDD함수를 구현하세요.
   function setDD(uint _a, string memory _b, bytes2 _c) public {
       dd = D(_a, _b, _c);
   }
//D형 변수들이 들어가는 array Ds를 선언하세요.
   D[] Ds;
//Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
   function pushD(uint _a, string memory _b, bytes2 _c) public {
       Ds.push(D(_a, _b, _c));
   }
}

contract review3 {
//숫자형 변수 number, 문자형 변수 name, bytes2형 변수 password 그리고 member라는 구조체를 선언하세요.
   struct member {
       uint number;
       string name;
       bytes2 password;
   }
//member형 변수 Michael을 선언하세요.
   member Michael;
//Michael에 값을 부여하는 setM 함수를 구현하세요.
   function setM(uint _number, string memory _name, bytes2 _password) public {
       Michael = member(_number, _name, _password);
   }
//member형 변수들이 들어가는 members를 선언하세요.
   member[] members;
//members에 새로운 member 변수를 넣는 pushMember 함수를 구현하세요
   function pushMember(uint _number, string memory _name, bytes2 _password) public {
       members.push(member(_number, _name, _password));
   }
}

contract review4 {
//숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요.
   struct D {
       uint a;
       string b;
       bytes2 c;
   }
//D형 변수 dd를 선언하세요.
   D dd;
//dd에 값을 부여하는 setDD함수를 구현하세요.
   function setDD(uint _a, string memory _b, bytes2 _c) public {
       dd = D(_a, _b, _c);
   }
//dd의 값을 반환하는 getDD 함수를 구현하세요(추가)
   function getDD() public view returns(D memory) {
       return dd;
   }
//D형 변수들이 들어가는 array Ds를 선언하세요.
   D[] Ds;
//Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
   function pushD(uint _a, string memory _b, bytes2 _c) public {
       Ds.push(D(_a, _b, _c));
   }
//(추가) 이미 형성된 dd라는 변수를 가져와서 푸쉬도 가능.
/*function pushD2() public {
    Ds.push(dd);
}*/

//Ds array의 n번째 요소를 반환받는 getN이라는 함수를 구현하세요.(추가)
   function getN(uint _n) public view returns(D memory) {
       return Ds[_n-1];
   }

}

