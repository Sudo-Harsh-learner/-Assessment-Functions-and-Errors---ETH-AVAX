// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract myContract{
    address public owner;
    uint public value;
    
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner==msg.sender,"Only owner can access this method");
        _;
    }

    function setValue(uint _value) public  onlyOwner {
        if(_value < 0){
            revert("Value must be greater than zreo");
        }
        value = _value;
    }

    function divide(uint a,uint b) public pure returns(uint){
        assert(b != 0);
        return a/b;
    }
}
