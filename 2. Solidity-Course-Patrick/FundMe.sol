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

    function withdraw() public {
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // reset the funders array 
        funders = new address[](0);
        // actually withdrawy the funds

        // there are 3 ways to do this
        // 1. transfer : This method is no longer recommanded to send ETH.
        // Let's understand what are we doing here.
        // msg.sender -> who ever has called the withdraw function
        // transfer -> this will initiate the transfer
        // address(this).balance -> balance of the whole contract which is - address(this)
        // this will use 2300 GAS - if more GAS is used then it will throw an error 
        payable(msg.sender).transfer(address(this).balance)

        // 2. send : This method is no longer recommanded to send ETH.
        // this is the same as the transfer but it will not fail if required GAS is more
        // it will return bool on which you can take the decision
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // sendSuccess must be true else it will throw exception with given error message.
        require(sendSuccess, "Send failed !!"); // by adding this we are reverting our transaction

        // 3. call
        // call function takes value 
        // empty argument is for fallback
        // curly braces can take GAS & address - currently we are not passing the GAS
        (callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Send failed !!");
    }

}