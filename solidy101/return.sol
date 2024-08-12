// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Returns {
    function returnMultiple() public pure returns(uint256, bool, uint256[3] memory){
        return(1, true, [uint256(1),2,5]);
    }

    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 2;
        _bool = false;
        _array = [uint256(3),2,1];
    }

    function returnNamed2() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        return(1, true, [uint256(1),2,5]);
    }

    struct Student{
        uint256 id;
        uint256 score; 
    }

    Student student;

    function initStudent1 () external {
        Student storage _student = student;
        _student.id = 520;
        _student.score = 1314;
    }

    function initStudent2 () external {
        student.id = 11111;
        student.score = 22222;
        Student storage _student = student;
        _student.id = 300;
        _student.score = 400;
    }

    function initStudent3 () external {
        student = Student(520, 1314);
    }

    function initStudent4 () external {
        student = Student({ id: 520, score: 1314 });
    }
}