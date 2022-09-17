// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./PriceConverter.sol";

/**
* This contract will allow external user to send funds.
* This contract will allow owner user to withdraw the funds.
**/
contract FundMe {

    // using the library to call its methods
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50 * 1e18; // => 50_000000000000000000
    address[] public funders;
    mapping (address => uint256) public addressToAmountFunded;

    function fund() public payable {
        // here conversionRate will return USD value with 18 decimal
        // so we have to add 18 decimal into our origina USD
        // Here we are using the library so we do not need to pass value to the function.
        // the object who is calling the method will be passed as the first argument.
        require(msg.value.getConversionRate() > minimumUsd, "Didn't send enough !!"); // 1e18 = 1 * 10 * 18 = 1 ETH        
        // msg.value: ETH(Wei) that is sent by the sender
        // msg.sender: address of the person who called this contract
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }

    

}