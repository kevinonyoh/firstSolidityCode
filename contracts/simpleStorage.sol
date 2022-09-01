// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract simpleStorage {
    uint256 value;
    
    struct People{
         uint256 id;
         string name;
    }
   // People public person = People({id:1, name:"kevin"});
      mapping (uint256 => string) public idToName; 
    People[] public people;

    function addPerson(uint256 _val, string calldata _name) public {
         People memory newPerson = People({id:_val, name: _name});
         people.push(newPerson);
         idToName[_val] = _name;
    }


    function store(uint256 _val) public  virtual  {
            value = _val;
    }
    function retrieve() public view  returns(uint256){
        return value;
    }
}