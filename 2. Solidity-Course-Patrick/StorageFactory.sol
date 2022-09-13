// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./Simple_Storage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArr;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    /**
    * This function will store the given number into the given storage.
    **/
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        simpleStorageArr[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    /**
    * This function will return the favNumber for given store.
    **/
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArr[_simpleStorageIndex].retrieve();
    }

}