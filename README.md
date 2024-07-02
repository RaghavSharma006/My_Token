## MyToken

This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works by creating and managing their own token.

### Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract creates a token with a name, abbreviation, and total supply. It includes functions to mint new tokens and burn existing tokens. This program serves as a simple and straightforward introduction to Solidity programming and can be used as a stepping stone for more complex projects in the future.

### Getting Started

#### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix Ethereum](https://remix.ethereum.org/).

1. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

    ```solidity
    // SPDX-License-Identifier: GPL-3.0

    pragma solidity ^0.8.18;

    contract MyToken {
        string public Token_Name = "RaghavToken6369";
        string public Token_abbrv = "RT"; 
        uint256 public Total_Supply = 1000;
        
        mapping(address => uint256) public balances;

        function Mint(address _a, uint256 _amount) public {
            require(_amount != 0, "Cannot add 0 tokens to your account");
            
            balances[_a] += _amount;
            Total_Supply += _amount;
        }

        function Burn(address _a, uint256 _amount) public {
            require(_amount != 0, "Cannot remove 0 tokens from your account");
            require(balances[_a] >= _amount, "Balance too low");
            
            balances[_a] -= _amount;
            Total_Supply -= _amount;
        }
    }
    ```

2. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

3. Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

4. Once the contract is deployed, you can interact with it by calling the `Mint` and `Burn` functions. Click on the "MyToken" contract in the left-hand sidebar, and then use the input fields to call the desired function. For example, you can mint new tokens to an address or burn tokens from an address.

### Authors

Raghav Sharma

