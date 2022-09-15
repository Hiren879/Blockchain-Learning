// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
// This interface will help us to get the ETHUSD price feed.
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/**
* This contract will allow external user to send funds.
* This contract will allow owner user to withdraw the funds.
**/
contract FundMe {

    uint256 public minimumUsd = 50 * 1e18; // => 50_000000000000000000

    function fund() public payable {
        // here conversionRate will return USD value with 18 decimal
        // so we have to add 18 decimal into our origina USD
        require(getConversionRate(msg.value) > minimumUsd, "Didn't send enough !!"); // 1e18 = 1 * 10 * 18 = 1 ETH        
    }

    /**
    * We will get the price of the ETHUSD pair from outside using Chainlink.
    **/
    function getPrice() public view returns(uint256) {
        // For this we will need following 2 things
        // 1. ABI - kind of blue print of the contract function
            // We will get the ABI using interface.
            // Call the interface method on address of the contract.
        // 2. Address of that contract which will provide us this feed data
            // Address from Rinkeby Testnet : 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e - ETH/USD
        // You can get the address from: https://docs.chain.link/docs/ethereum-addresses/

        // Here we are assumimg that contract at: 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
        // will be having implemented all the functions which we need
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (, int256 price,,,) = priceFeed.latestRoundData(); // int256? because price can be negative also

        // here price and msg.value are in different units
        // we have to make them same in terms of units
        // 1. price is something like this in USD = 3000.00000000 - 8 decimal
        // 2. msg.value is something linke this in ETH(Wei) = 1000000000000000000 - 18 decimal
        // 3. so we have to now make demical equal for both so we will add decimal into USD

        return uint256(price * 1e10); // 10000000000
        // 4. Now this price is in int256 but msg.value  is uint256 so we need to caste it.
        // 5. So finally this function will return ETH price into USD with 18 decimal and in USD

    }

    function getConversionRate(uint256 ethAmount) public view return (uint256) {
        uint256 ethPrice = getPrice(); // this will retrun ETH price in USD in uint256
        // we are removing 18 decimal otherwise we will 36 decimals
        // 1. 18 from ethPrice : 3000_000000000000000000
        // 2. 18 from ethAmount :   1_000000000000000000
        uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18; 
        // result = 3000_000000000000000000
        return ethAmountInUSD; 
    }

}