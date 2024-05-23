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

    function burn (address addr, uint value) public {
   if (balances[addr] >= value){
      total_tokensupply -= value;
      balances[addr] -= value;
   }
   
   }
}
