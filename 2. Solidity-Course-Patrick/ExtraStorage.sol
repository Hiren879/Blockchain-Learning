// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "./Simple_Storage.sol";

// We are inheriting simpleStorage to this newly created ExtraStorage
contract ExtraStorage is SimpleStorage {

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }

}

