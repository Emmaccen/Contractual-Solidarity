// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
// pragma solidity 0.8.8;
 
contract SimpleStorage {  
// Avalanche, Polygon, Fanthom
    uint256 public favNumber;

    function store (uint256 _favNumber) public virtual{
        favNumber = _favNumber;
    }
    mapping(string => People) public getPerson;

    struct People {
        uint256 age;
        string name;
    }
    
    // People public person = People({age : 23, name : "Emmanuel"});
    People[] public person;


    function createNewPerson(uint256 age, string memory name) public{
        People memory newPerson = People(age, name);
        person.push(newPerson);
        getPerson[name] = newPerson;
    }

    function getFavNumber() public view returns(uint256){
        return favNumber;
    }
}
