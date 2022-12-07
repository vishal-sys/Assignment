// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.0/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    uint public numb;

    
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
    uint256[5] public slabs=[100,200,300,400,500]; //Defined slabs using fixed sized array with length of 5 
    function enquires(uint256 _index) public pure  {

         slabs[_index]=slabs[];
    }

    function check(uint256 _numb) public{
        numb=_numb;
        require(numb>1000,"Numb is minimum");
    }
        

}


