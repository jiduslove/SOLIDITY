// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract review {
    //이름, 생일, 번호를 담은 구조체 Student를 선언하고 Student들이 들어갈 수 있는 array students를 선언하시오.
    struct Student {
        string name;
        uint birth;
        uint number;
    }

    Student[] Students;

    //students에 Student를 넣을 수 있는 함수(이 문제는 push를 의미함)
    function pushStudents(string memory _name, uint _birth, uint _number) public {
        Students.push(Student(_name, _birth, _number));
    }

    //n번째 학생을 반환해주는 함수 
    function getStudent(uint _n) public view returns(Student memory){
        return Students[_n-1];
    }
    
    //n번째 학생의 이름을 반환해주는 함수를 구현하세요.
    function getN(uint _n) public view returns(string memory){
        return Students[_n-1].name;
    }

}
//최종적으로 이런식으로 문제가 나온다.
//이름, 생일, 번호를 담은 구조체 Student 이들의 데이터를 관리하는 array, students에 Student를 넣을 수 있는 함수, n번째 학생을 반환해주는 함수, n번째 학생의 이름을 반환해주는 함수를 구현하세요.

contract review1 {
    //이름 a, 번호 b, bytes2 c를 담은 구조체 D
    struct D {
        string a;
        uint b;
        bytes2 c;
    }
    //D형 변수 ddd를 선언하시오.
    D ddd;
    //ddd에 값을 부여하는 함수를 구현하시오.
    function setDDD(string memory _a, uint _b, bytes2 _c) public {
        ddd = D(_a, _b, _c);
    }
    //D가 들어가는 array D_list를 선언하시오.
    D[] D_list;
    //D_list 전체를 반환하는 함수 
    function getD_list() public view returns(D[] memory){
        return D_list;
    }
    //D_list 안에서 n번째 데이터를 반환하는 함수를 구현하시오.
    function getN(uint _n) public view returns(D memory){
        return D_list[_n-1];
    }
}

/*
실습가이드
1. 1, a, ["a", "b"] -> pushABCs
2. 2, b, ["c", "d"] -> pushABCs
3. 3, c, ["e", "f"] -> pushABCs
4. 4, d, ["g", "h"] -> pushABCs
5. 5, e, ["i", "j"] -> pushABCs
6. getABCs() 해보기
*/

contract review2 {
    //ABC라는 구조체 안에는 숫자형 a, 문자형 b, 문자형 array c가 들어있다.
    struct ABC {
        uint a;
        string b;
        string[] c;
    }
    //ABC가 들어가는 array ABCs를 구현하고 ABCs에 ABC를 넣는 함수
    ABC[] ABCs;

    function pushABCs(uint _a, string memory _b, string[] memory _c) public {
        ABCs.push(ABC(_a, _b, _c));
    }
    //특정 ABC를 반환하는 함수(특정 ABC를 반환하라는 말은 특정한 즉, array에서 n번째를 반환하라는 말.)
    function getN(uint _n) public view returns(ABC memory){
        return ABCs[_n-1];
    }
    //ABCs 전체를 반환하는 함수
    function getABCs() public view returns(ABC[] memory){
        return ABCs;
    }
    //특정 ABC의 c array를 반환받는 함수를 각각 구현하시오.
    function getABC_Array(uint _n) public view returns(string[] memory){
        return ABCs[_n-1].c;
    }
}