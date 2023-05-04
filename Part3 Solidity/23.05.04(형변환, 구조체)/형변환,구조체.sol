// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//최종목표 첫글자가 무엇인지 알아내는것.
//1bytes는 16진수 2자리.
//아래 내용은 string에서 bytes, bytes에서 string으로 변환하는 과정.

contract StringAndBytes {
    string a;

    function setString(string memory _a) public {
        a = _a;
    }

    function getString() public view returns(string memory) {
        return a;
    }

    function stringToBytes() public view returns(bytes memory){
        return bytes(a);
    }

    function stringToBytes2() public view returns(bytes1, bytes1, bytes1){
        return (bytes(a)[0], bytes(a)[1], bytes(a)[2]);
    }
// bytes1은 용량이 정해진 정적, string은 동적이여서 bytes1이 아닌 bytes memory로 변경.
    function bytesToString(bytes memory _a) public pure returns(string memory) {
        return string(_a);
    } 
// 문자열을 넣었는데 그 문자열에 첫번째 글자를 알고싶다면? 그러면 일단 문자를 넣어야 한다.
// 그리고 abc의 결과값으로 a가 나온다.
    function bytesToString2(string memory _a) public pure returns(bytes1) {
        bytes memory _b; // bytes형 변수 _b 선언
        _b = bytes(_a); // _b에 _a의 bytes 형변환 정보 대입
        return _b[0];
    }

// 자리수가 명확하게 
// new (초기사이즈를 결정을 해준다?) 
// new bytes(1) -> 시작은 1로하되 필요에 따라서 바꿀수 있다. (쉽게 1자리 bytes로 선언했다라고 생각하면 됨.)
    function bytesToString3(string memory _a) public pure returns(string memory) {
        bytes memory _b = new bytes(1);
        _b[0] = bytes(_a)[0];
        return string(_b);
    }

    function bytesToString4(string memory _a, uint _n) public pure returns(string memory) {
        bytes memory _b = new bytes(1);
        _b[0] = bytes(_a)[_n-1];  /*[나중에] 조건문 배운 후에 다시 돌아오기, 글자 수에 맞게*/
        return string(_b);
    }

}
/*
contract LocalVariable {
    // function 안에도 uint를 넣을 수 있다.
    function A() public pure returns(uint) {
        uint a=5;
        uint b=7;
        return (a+b);
    }
}*/

/*
실습가이드
1. 1 -> push, 2 -> push, 3 -> push, 4 -> push
2. getLength 해보기 -> 4 확인
3. getNumber -> 1,2,3,4 각각 해보기 -> 각각 1,2,3,4 확인
4. pop 해보기
5. getLength 해보기 -> 3확인
6. getNumber -> 1,2,3,4 각각 해보기 -> 각각 1,2,3, 오류 확인
7. deleteNum -> 2 해보기
8. getNumber -> 2 해보기 -> 0 확인
9. changeNum -> 2,5 해보기
10. getNumber -> 2 해보기 -> 5 확인 
*/
contract Array {
    // array = 같은 자료형들이 들어있는 곳(어떤 자료형이 들어가는지, array입니다 표시해주고, 이름을 입력.)
    // 숫자형이면 숫자형, 문자형이면 문자형처럼 같은 자료형들만 들어갈 수 있음.
    uint[] numbers; // 자료형, [] array, 이름
    string[] letters;

    // 1. 넣기
    function push(uint _a) public {
        numbers.push(_a); // 배열이름.push(변수)
    }

    // 2. 빼기
    // 들어온 순서대로 정렬이 되고 지우는 순서는 마지막에 들어온 순서부터 지워짐.
    function pop() public {
        numbers.pop(); // 배열이름.pop()
    }

    // 3. 보기
    function getNumber(uint _n) public view returns(uint) {
        return numbers[_n-1]; // 배열이름[_n번째]
    }

    // 4. 길이
    function getLength() public view returns(uint) {
        return numbers.length; //배열이름.길이
    }

    // 5. 바꾸기
    function changeNum(uint _k, uint _z) public {
        numbers [_k-1] = _z; 
    }

    // 6. delete
    // 길이는 변화하지 않고 저장되어있던 값을 초기화 시킨다.
    function deleteNum(uint _n) public {
        delete numbers[_n-1];
    }

    //7. 전체 array 반환
    function returnArray() public view returns(uint[] memory) {
        return numbers;
    }
}

contract Array_s {
    // array = 같은 자료형들이 들어있는 집합
    string[] letters; // 자료형 [] array 이름

    // 1. 넣기
    function push(string memory _a) public {
        letters.push(_a); // 배열이름.push(변수)
    }

    // 2. 빼기
    function pop() public {
        letters.pop(); // 배열이름.pop(), 맨뒤의 숫자를 날림
    }

    // 3. 보기
    function getLetter(uint _n) public view returns(string memory) {
        return letters[_n-1]; // 배열이름[_n번째]
    }

    // 4. 길이
    function getLength() public view returns(uint) {
        return letters.length; //배열이름.길이
    }

    // 5. 바꾸기
    function changeLet(uint _k, string memory _z) public {
        letters[_k-1] = _z; //배열이름[_k번째] = _z -> _k번째를 _z로 바꿔
    }

    // 6. delete 
    function deleteLet(uint _n) public {
        delete letters[_n-1]; // delete 배열이름[_n번째] = _n번째 숫자를 없애줘
    }

    //7. 전체 array 반환
    function returnArray() public view returns(string[] memory) {
        return letters;
    }
}

/*학생의 정보를 관리할때 이름,번호,나이 등의 다양한 정보가 있는데 
서로 다른 형태의 정보가 한개에 묶여서 하나의 변수처럼 움직이는 아이*/

// 구조체 : 여러가지 변수들을 달고 다닌다는 특징이 있음.
// array (같은형만 들어감) , 구조체 (다른형이 들어감)
contract Struct {
    struct Student {
        string name;
        string gender;
        uint number;
        uint birthday;
    } 
    /* 구조체 선언 
    struct 구조체명 {
        .../
        .../
        ...
    }
    */

// 새로운 변수형 Student를 만들었음.
    Student s; // Student형 변수 s
    Student[] students; //Student형 변수들의 array students

    function setStudentA(string memory _name, string memory _gender, uint _number, uint _birth) public {
        s = Student(_name, _gender, _number, _birth);
    }

    function getStudentA() public view returns(Student memory) {
        return s;
    }

    function pushStudent(string memory _name, string memory _gender, uint _number, uint _birth) public {
        students.push(Student(_name, _gender, _number, _birth)); // 배열명.push(구조체명(구조체 정보들))
    }

    function popStudent() public {
        students.pop();
    }

    function getLength() public view returns(uint) {
        return students.length;
    }

    function getStudent(uint _n) public view returns(Student memory) {
        return students[_n-1];
    }

    function getStudents() public view returns(Student[] memory) {
        return students;
    }
}

// 오류를 확인할 수 있는 것은 이름과 input값의 개수다.
contract Errors {
    uint a;

    function add(uint _a, uint _b) public pure returns(uint) {
        return _a+_b;
    }

    /*
    function add(uint _a, uint _b) public returns(uint) {
        a = a + _a + _b;
        return a;
    }

    function add(uint _a, uint _b) public view returns(uint) {
        return a+_a+_b;
    }

    function add(uint _a, uint _c) public pure returns(uint) {
        return _a+_c;
    }

    function add(uint _a, uint _b) public pure returns(uint, uint) {
        return (_a+_a, _a+_b);
    }
    */

    function add(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a+_b+_c;
    }

    function add2() public pure returns(uint) {
        uint c = 5;
        uint d = 7;
        return c+d;
    }

}