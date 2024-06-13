# ETH + AVAX PROOF: Intermediate EVM Course

This Solidity program is a simple "My Token" contract program in solidity that demonstrates the basic features of a Token or currency like its "Name", "Total Supply" and "Abbreviation" as well as some functions such as "Mint" that can add on the token to a specific user or address and "Burn" is just the opposite of Mint. The purpose of this program is to give a basic understanding about error handling and the logic building for more such contracts.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three functions "Mint", "Burn" and "send" that allow to add, remove or send tokens from a specific address or user. This program serves as a simple and straightforward introduction to error-handling, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:
```solidity
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
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Mint or Burn function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "Mint" function. Then, enter the address and amount of tokens. Finally, click on the "transact" button to execute the function and retrieve the "Balance" amount. The same can be performed with Burn but it will deduct the amount enterd from total balance of that address and if the amount > Balance then, it will show a error message on console. 

## Authors

Contributors names and contact info
- [@Harshdeep Singh](https://github.com/Sudo-Harsh-learner)
