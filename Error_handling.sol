// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract myContract{
    mapping (address => bool) Student;
    struct Marks{
        uint Maths;
        uint English;
        uint Science;
    } mapping(address => Marks) StudentMarks;
    
   
    modifier isStudent(address _stu) {
        require(Student[_stu]==true,"Only students are allowed!!");
        _;
    }

    function setStudentStatus(address _stu,bool _status) public {
        Student[_stu] = _status;
    }
    
    function setMarks(address _stu,uint _maths, uint _english, uint _science) public isStudent(_stu) {
        StudentMarks[_stu] = Marks(_maths, _english, _science);
    }

    function getTotalMarks(address _student) public view isStudent(_student) returns (uint) {
        Marks memory marks = StudentMarks[_student];
        // assert(marks.Maths ==0 || marks.English ==0 || marks.Science ==0);
        return marks.Maths + marks.English + marks.Science;
    }
    
    function CGPA(address _student) public view isStudent(_student) returns (uint) {
        uint total = getTotalMarks(_student);
        if (total <  120){
            revert("You are not eligible");
        }
        return total/30;
    }

   
}
