// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract abc {
    struct Student {
        string name;
        uint number;
        string[] classes;

    }

    Student[] Students;

    function setStudents(string memory _name, uint _number, string[] memory _classes) public {
        Students.push(Student(_name, _number, _classes));
    }

    function getStudents(uint _n) public view returns(Student memory) {
        return Students[_n-1];
    }

    function getStudentsName(uint _n) public view returns(string memory) {
        return Students[_n-1].name;
    }

    mapping(string => Student[]) Teacher_student;

    function setTeacher_student(string memory _Teacher, string memory _name, uint _number, string[] memory _classes) public {
        Teacher_student[_Teacher].push(Student(_name, _number, _classes));
    }
// 이거 잘 모르겠음.
    function set2(string memory _student1, uint _n, uint _number) public {
        Teacher_student[_student1][_n-1].number = _number;
    }

    function getTeacher_student(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_student[_Teacher];
    }

    
}
