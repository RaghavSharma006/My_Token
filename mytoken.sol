// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MyToken
{
    string public  Token_Name = "RaghavToken6369";
    string public  Token_abbrv= "RT"; 
    uint256 public  Total_Supply=0;
    
    mapping(address => uint256) public balances;


    function Mint (address _a , uint256 _amount)  public 
    {
            require(_amount !=0,"Can not add 0  token to your acount");
            
            balances[_a]+=_amount;
            Total_Supply+=_amount;

    }

    function Burn (address _a , uint256 _amount)  public 
    {
            require(_amount !=0,"Can not remove 0  token to your acount");
            require(balances[_a]>=_amount,"Balance too low");
            balances[_a]-=_amount;
            Total_Supply-=_amount;

    }



}