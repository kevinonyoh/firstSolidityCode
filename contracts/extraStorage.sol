// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./simpleStorage.sol";

contract extraStorage is simpleStorage{
   function store(uint256 _val) public  override  {
              value = _val+5;
    }
}