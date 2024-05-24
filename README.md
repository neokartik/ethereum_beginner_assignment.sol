MyToken Smart Contract
This is a simple implementation of an ERC-20 like token smart contract written in Solidity. The contract allows for minting and burning of tokens.

Features
Token Name: Polkadot
Token Abbreviation: CRYPTO
Total Token Supply: Variable based on minting and burning actions.
Functions

1.) mint

Description: 
Mints new tokens and adds them to the specified address balance.

Parameters:
addr: The address to receive the newly minted tokens.
value: The amount of tokens to mint.
Functionality: Increases the total_tokensupply by the value and adds the value to the balance of addr.

2.) burn

Description: Burns tokens from the specified address balance.
Parameters:
addr: The address from which tokens will be burned.
value: The amount of tokens to burn.
Functionality: Decreases the total_tokensupply by the value and deducts the value from the balance of addr, provided the address has enough tokens.

Usage
Minting Tokens:

function mint(address addr, uint value) public
Call this function with the recipient address and the amount of tokens to be minted.

Burning Tokens:
function burn(address addr, uint value) public
Call this function with the address and the amount of tokens to be burned. Ensure the address has enough tokens before calling this function.

Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract MyToken {

   string public Token_name ="polkadot";
   string public tokenAbbrev = "crypto";
   uint public total_tokensupply = 0;
 
   mapping(address => uint)public balances;
    
   function  mint (address addr, uint value) public {
   total_tokensupply += value;
   balances[addr] += value;
   
   }

    function burn(address addr, uint value) public {
   if (balances[addr] >= value){
      total_tokensupply -= value;
      balances[addr] -= value;
   }
   
   }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "desiredfile.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "desiredfile" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the function. Click on the "desiredfile" contract in the left-hand sidebar, and then click on the "desired" function
