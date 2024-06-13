// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract MyToken{
    uint public totalSupply;
    string public tokenName = "NoobCoin";
    string public tokenAbbrv = "NBC";
    mapping(address => uint) public addresses;
    
     function mint(address _addr, uint _val) public {
        require(_val > 10, "Atleast 10 tokens req. to mint!!");
        totalSupply += _val;
        addresses[_addr] += _val;
    }

    function burn(address _addr, uint _val) public {
        assert(addresses[_addr] >= _val);
        totalSupply -= _val;
        addresses[_addr] -= _val;  
    }

    function send(address _addr, uint _val) public {
        if(_val < 1) {
            revert("Token must be greater than 1");
        }
        addresses[_addr] += _val;
        totalSupply += _val;
    }
}
