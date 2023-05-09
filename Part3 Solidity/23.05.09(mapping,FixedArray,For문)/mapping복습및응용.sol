// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

    contract MAPPING {
    mapping(uint => uint) a; // mapping(자료형 => 자료형) 이름
    mapping(string => uint) b; // key-value 쌍이 각각 string형과 uint형
    mapping(bytes=> uint) c; // bytes를 넣으면 uint가 나옴

    function setB(string memory _key, uint _value) public {
        b[_key] = _value; //mapping이름[_key값] = _value값
    }

    function getB(string memory _key) public view returns(uint) {
        return b[_key]; //mapping이름[_key값] -> value값을 돌려줌
    }

    function setC(bytes memory _key, uint _value) public {
        c[_key] = _value;
    }

    function getC(bytes memory _key) public view returns(uint) {
        return c[_key];
    }

    struct Student {
        uint number;
        string name;
        string[] classes;
    }

    mapping(string => Student) Teacher_Student;

    function setTeacher_Student(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Student[_Teacher] = Student(_number, _name, _classes);
    }

    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }
}

/*
실습 가이드
1. setTeacher_Student 해보기
2. getTeacher_Student 해보기
3. setTeacher_Class -> 같은 선생이름으로 여러명 학생 해보기
4. getTeacher_Class -> 3번에서 설정한 선생이름으로 해보기 -> 3번에서 등록한 학생 모두 나오는지 확인
*/

contract MAPPING1{
    struct Student{
        uint number;
        string name;
        string[] classes;
    }

    //어떤 선생님이 담당 학생이 가지고 있음
    mapping(string => Student) Teacher_Student;
    //어떤 선생님이 여러학생을 가지고 있음
    mapping(string => Student[]) Teacher_Class;

    function setTeacher_Student(string memory _Teacher,uint number,string memory name,string[] memory classes) public {
        Teacher_Student[_Teacher] = Student(number,name,classes);
    }
    
    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }

    function setTeacher_Class(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Class[_Teacher].push(Student(_number, _name, _classes));
    }

    function getTeacher_Class(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_Class[_Teacher];
    }
}