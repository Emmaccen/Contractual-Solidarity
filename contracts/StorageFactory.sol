// SPDX-License-Identifier: MIT

pragma solidity >0.8.0;
import "./SimpleStorage.sol";


contract StorageFactory {
    SimpleStorage public simpleStorage;

    constructor(){
        simpleStorage = new SimpleStorage();
    }

    function CreateNewSimpleStorageContact() public {
           simpleStorage = new SimpleStorage();
    }

    function getFavFromSimpleStorage() public view returns(uint256){
        return simpleStorage.getFavNumber();
    } 
    function callStoreFromSimpleStorage (uint256 _favNumber) public{
       simpleStorage.store(_favNumber);
    }  
}