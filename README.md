# ETH + AVAX PROOF: Intermediate EVM Course

This Solidity program is a simple "MyContract" contract program in solidity that demonstrates the error handling using require, assert and revert methods. The purpose of this program is to give a basic understanding about error handling and the logic building for more such contracts.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions "setValue" and "divode" that allow to set the value if it's greater than 0 and divide two numbers if duvusor is not zero. This program serves as a simple and straightforward introduction to error-handling, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:
```solidity
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
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Mint or Burn function. Click on the "MyContract" contract in the left-hand sidebar, and then click on the "setValue" function. Then, enter the value. Finally, click on the "transact" button to execute the function and set the new value. The same can be performed with divide but it will need two numbers one is divident and other is divisor. 

## Authors

Contributors names and contact info
- [@Harshdeep Singh](https://github.com/Sudo-Harsh-learner)
