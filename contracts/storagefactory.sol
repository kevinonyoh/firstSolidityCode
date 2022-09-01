// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./simpleStorage.sol"; 

contract storagefactory {
         simpleStorage[] public SimpleStorageArray;
         
    function createSimpleStorageContract() public {
          simpleStorage SimpleStorage = new simpleStorage();
         SimpleStorageArray.push(SimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageVal) public {
         SimpleStorageArray[_simpleStorageIndex].store(_simpleStorageVal);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return  SimpleStorageArray[_simpleStorageIndex].retrieve();
    }
}