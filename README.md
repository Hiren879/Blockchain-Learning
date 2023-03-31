# Blockchain-Learning (Solidity)

IDE used → [https://remix.ethereum.org/](https://remix.ethereum.org/)

Useful for whom?

- anyone who is new to web3 and wanted to get an overview of Solidity.
- anyone who has little knowledge of OOPs concepts.
- anyone who wants to refresh his past Solidity learnings.

---

## Resources

### Learn Solidity

1. Solidity documentation: [https://docs.soliditylang.org/en/v0.8.13/introduction-to-smart-contracts.html](https://docs.soliditylang.org/en/v0.8.13/introduction-to-smart-contracts.html)
2. 32 hours Solidity course by Patrick Collins: [https://www.youtube.com/watch?v=gyMwXuJrbJQ](https://www.youtube.com/watch?v=gyMwXuJrbJQ)
3. Introduction to Solidity by Moralis Web3: [https://www.youtube.com/watch?v=IkCfIE1VoRo&list=PLFPZ8ai7J-iTJDENUIY40VsU_5Wmxkr7j&index=1](https://www.youtube.com/watch?v=IkCfIE1VoRo&list=PLFPZ8ai7J-iTJDENUIY40VsU_5Wmxkr7j&index=1)
4. To understand the basics of the blockchain: [https://andersbrownworth.com/blockchain/](https://andersbrownworth.com/blockchain/)
5. Solidity 0.8: [https://www.youtube.com/watch?v=xv9OmztShIw&list=PLO5VPQH6OWdVQwpQfw9rZ67O6Pjfo6q-p](https://www.youtube.com/watch?v=xv9OmztShIw&list=PLO5VPQH6OWdVQwpQfw9rZ67O6Pjfo6q-p)
6. Learn solidity by example: [https://www.youtube.com/watch?v=hMwdd664_iw&list=PLO5VPQH6OWdULDcret0S0EYQ7YcKzrigz](https://www.youtube.com/watch?v=hMwdd664_iw&list=PLO5VPQH6OWdULDcret0S0EYQ7YcKzrigz)
7. Playlists: [https://www.youtube.com/c/EatTheBlocks/playlists](https://www.youtube.com/c/EatTheBlocks/playlists)

### Optimizing the Smart Contracts

1. [https://www.youtube.com/watch?v=xNlYqDHyN8g](https://www.youtube.com/watch?v=xNlYqDHyN8g)
2. Gas Optimisation: [https://github.com/harendra-shakya/gas-optimization](https://github.com/harendra-shakya/gas-optimization)

### Security & Hacking

1. [https://ethernaut.openzeppelin.com/](https://ethernaut.openzeppelin.com/)
2. [https://www.youtube.com/channel/UCJWh7F3AFyQ_x01VKzr9eyA/playlists](https://www.youtube.com/channel/UCJWh7F3AFyQ_x01VKzr9eyA/playlists)
3. [https://learnweb3.io/](https://learnweb3.io/)

### Documentations & scientific papers

1. [https://github.com/bellaj/Blockchain](https://github.com/bellaj/Blockchain)
2. Chainlink Docs: https://docs.chain.link/docs/architecture-overview/

### To create beautiful codeshots

1. [https://carbon.now.sh/](https://carbon.now.sh/)

## Few blockchain concepts

1. If you own Mnemonic (12 words) = all the accounts are in your control. If you lose it = you lose all the accounts
2. If you own a private key = you own only one account. If you lose it = you lose your single account and not all accounts.

### Hashing:

- Unique fixed length string meant to identify pieces of data.
- ETH uses Keccak-256 (SHA family hashing algorithm)

### Private Key:

- Key only known by the holder
- used to sign the transaction
- It must be kept hidden so that only you can sign the transaction
- Anyone having a public key can check if that transaction is signed by you or not
- Private Key → Public Key → Address

### Consensus:

- POW - proof of work → BTC & ETH
    - complex computation via the mining process
    - expensive activity - more electricity - more power
- POS - proof of stack → ETH 2.0
    - validators - gas fees are paid to validators in POS
    - In proof of stack, collaterals will be created by the nodes who want to participate in the network.  If any of them misbehave then collateral will be taken from them.
    - uses less energy because only one random node is selected to do the complex computation and the rest will just validate the block.
    - Sharding → multiple chains are created from the main chain so that more people can join the blockchain
        - it is a scalability solution for layer 1 protocols.

## GAS, Transaction fees & Gwei

1. Transaction fees: go to miners as transaction fees so that they can keep running their nodes to serve more transactions
2. GAS fees: A unit of computational measurements
    1. The more complex your transaction is the more gas you have to pay.
    2. If many people are doing the transactions you may need to pay higher GAS fees.
3. Transaction fees = Gas numbers used in a transaction * gas price

    ![Screenshot 2022-09-08 at 1 52 18 AM](https://user-images.githubusercontent.com/2741709/189997760-1deb7a33-656d-40b3-84e7-64d44a4ac469.png)

1. Wei Vs Gwei Vs Ether
    
    ![Screenshot 2022-09-09 at 5 33 25 PM](https://user-images.githubusercontent.com/2741709/189997909-b45d27ca-2a32-48d0-a322-7e79353d5200.png)



## What is Smart Contract?

- set of instructions
    - can not be altered (immutable)
    - automatically executes
    - everyone sees the terms of the agreement
- executed when certain conditions are met over the blockchain
- no need for any authority
- What problem does it solve? Why does even this require? Why does this matter?
    - Unbreakable promise
    - Agreement - everything you do and everything you interact with is the result of some kind of agreement or contract.
    - Promise - keep money in the bank and the bank will give you the interest
    - But this does not always work in the real world, people tend to break the promise.
    - SMART CONTRACTS fixes this problem

## What is Blockchain Oracle?

- any device that interacts with the off-chain world to provide external data or computation to smart contracts.
- Hybrid Smart Contracts = On-Chain + Off-Chain agreements

## Web 1.0 Vs web 2.0 Vs Web 3.0

1. Web1.0 - static content on web - mostly HTML, CSS, JS
2. Web2.0 - Dynamic and centralized content + controlled by a single entity that owns the platform
3. Web3.0 - Decentralised content + controlled by the owner of the information - meaning no central authority to control the whole network
    1. safe & secure - you have taken down half of the running nodes to change the contract/logic whereas in a centralized ecosystem you have to take down just one node to hack the system.

---

Starting with an elementary program that sets the “uint” and gets the same value using the get function. If you know any Object Oriented Programming language this would be no rocket science.

![Screenshot 2022-05-21 at 2 29 40 PM](https://user-images.githubusercontent.com/2741709/189998477-285e237b-2de7-45f9-98bd-4be33d99db60.png)


**line 4:** same as a Java class

**line 6:** contract variable just like a class variable in java

**line 11:** set function which sets the uint value 

**line 8:** get function to get the value of storedData

**line 18:** “view” keyword in the get function tells that function will never change anything in the contract.

<aside>
💡 The “undefined” and “null” concept does not exist in Solidity. Pheww lucky we are. Instead, there is a default value depending on its type.

</aside>

---

## Basic data types in Solidity

1. ****Booleans →**** true / false
2. ****Integers:**** 
    1. int → int256
    2. uint → uint256
    
    integers in solidity are restricted to a certain range.
    
3. **Address:**
    1. address → holds a 20 byte of value - the size of an Ethereum address
    2. address payable → address + members like “transfer” and “send”
    
    Ask yourself a question →. “Why did they keep two types of address?”
    
    The answer is here → [https://docs.soliditylang.org/en/v0.8.13/types.html](https://docs.soliditylang.org/en/v0.8.13/types.html)
    

We will dive deep into more data types during our journey. Keep reading…….!!!!

Examples of various data types:

```solidity
pragma solidity >=0.7.0 < 0.9.0;

contract DataTypeContract {
    // unsigned integer : number greater than 0 (as of now for learning)
    uint public myUint = 1;

    // greater or smaller than 0
    int public myInt = -1;

    // string variable
    string public myString = "myString";

    // boolean : true/false
    bool public myBool = true;

    // constant
    uint public constant myConst = 1;

    // Array
    Player[] public playersArr;

    // enum to store and access fix values
    enum Level {Novice, Intermediate, Advanced}

    // just like Object of Java
    struct Player {
        address playerAddress;
        Level playerLevel;
        string firstName;
        string lastName;
        uint createdTime;
    }

    mapping (address => Player) public players;

    // use memory to store the in the memory
    function addPlayer(string memory fname, string memory lname) public {
        // playersArr.push(Player(fname, lname)); -> to push in array
        players[msg.sender] = Player(msg.sender, Level.Novice, fname, lname, block.timestamp);
    }

    // retrive players level
    function getPlayerLevel(address playerAddress) public view returns(Level) {
        return players[playerAddress].playerLevel;
    }

    // If the player is older than certain time then only level him up.
    // here if player is 20 second old then only we will level him up to Intermediate
    function changePlayerLevel (uint adr) public {
        Player storage player = playersArr[adr];
        if(player.createdTime + 20 <= block.timestamp) {
            player.playerLevel = Level.Intermediate;
        }
    }

}
```

There 6 places where you can store the data in EVM:

<img width="1175" alt="Screenshot 2022-09-11 at 8 01 26 PM" src="https://user-images.githubusercontent.com/2741709/189998770-baa01dcf-3319-47cb-84f5-5846043012e6.png">


1. Call data & memory: 
    1. Temporary storage variable just to store the value for single instance of the transaction.
    2. Exists only for function execution.
    3. Call data Vs memory:
        1. Call data: you can not modify the variable inside the function
        2. memory: you can modify the variable inside the function
    4. array(string), struct & mapping:
        1. we can only declare “memory” for above 3 because they are special data types in solidity. For rest, solidity knows when to declare “memory”.
    
    > *This reminds me the concept of pass-by-value & pass-by-reference in Java.*
    > 
2. Storage:
    1. It exists even outside of the function execution.
    2. Variable declared in contract are by default storage.

## Creating our first Coin on the blockchain using Solidity

I have tried to add maximum comments so that the code can be self-explanatory.

```solidity
pragma solidity >=0.7.0 < 0.9.0;

contract Coin {
    address public minter;
    mapping (address => uint) public balance; // same like hashMap of Java, holding key-value pair

    // transaction log = stays with the block 
    /*
    * This event will log the transaction details in the block.
    */
    event SentEvent(address from, address to, uint amount);

    /*
    * modifier function which restricts only minter to call the function which will inherit this.
    */
    modifier onlyMinter{
        require(msg.sender == minter, "Only minter can call this function");
        _;
    }

    modifier amountGreaterThan(uint amount) {
        require(amount < 1e60);
        _;
    }

    modifier walletBalanceGreaterThanAmount(uint amount) {
        require(amount <= balance[msg.sender],"Insufficient balance");
        _;
    }

    // constructor - called when contract is created
    constructor() {
        /*
        * msg = keyword which is used to access certain variables from the blockchain when the contract is called
        * msg.sender = this will give us the address of the wallet that called this contract
        */
        minter = msg.sender; 
    }

    /*
    * This function will mint give the amount,
    * and assign it to the receiver address.
    * onlyMinter : This modifier function will allow only the minter to call this function.
    */
    function mint(address receiver, uint amount) public onlyMinter amountGreaterThan(amount) {
        // we need to validate the incoming address, it must be minter's address
        balance[receiver] += amount;
    }

    /*
    * This function will send the amount to the given address.
    */
    function send(address receiver, uint amount) public walletBalanceGreaterThanAmount(amount) {
        // 1. first check if the person who is sending the amount has enough balance in his waller : using modifier
        // 2. add to receiver's wallet
        balance[msg.sender] -= amount;
        balance[receiver] += amount;
        // emit - this will log this transaction into the block.
        emit SentEvent(msg.sender, receiver, amount);
    }
   
}
```

If you will call “mint” with an address that is not the owner of the coin then you will get the following exception.

![Screenshot 2022-06-04 at 11 43 02 PM](https://user-images.githubusercontent.com/2741709/189999250-d6ea6067-98fb-4038-bbb9-60d20e6d5b2d.png)

I have added a few more such “modifiers” in the above code which will check certain behavior at runtime. This will make our code more flexible, maintainable, and reusable. 

---

### View & Pure:

- view:
    - use when you do not want to update the state of the blockchain.
    - use when you only want to read something from the blockchain.
- pure:
    - use when you do not want to update & read anything in & from the blockchain.
    
- Both keywords are used with the functions.
- The function will not use any GAS fees when we will use this keyword.
- GAS is only spent when your function changes the state of the blockchain.
- But if you are calling a PURE/View function from the function which is not pure or view then you have to pay the GAS for your PURE/View function.

---

## Creating our first Auction Contract on the blockchain using Solidity

```solidity
pragma solidity >= 0.7.0 < 0.9.0;

contract SimpleAuction {
    // address - dataType
    // payable - another security layer to tell that we can send coins to this address
    // public - publicly accessible
    address payable public beneficiary; // someone for whom auciton is arranged and at the end tokens will be passed to this person.

    // when the auction will end
    uint public auctionEndtime;

    // values for highest bid & bidder
    uint public highestBid;
    address public highestBidderAdrs;

    // This will keep track who bid how much so that we can return their amount later
    mapping(address => uint) public pendingReturns;

    // is auction ended or not
    bool isAuctionEnded = false;

    // Event: who has the highest bid
    event HighestBidIncrease(address highestBidder, uint amount);

    // Event: highest bidder and the bid amount when auction is ended
    event AuctionEnded(address highestBid, uint amount);

    // constructor will do following 2 things.
    // 1. set bidding end time - basically setup the bid duration
    // 2. take the first beneficiary account 
    constructor(uint _biddingTime, address payable _beneficiary) {
        beneficiary = _beneficiary;
        auctionEndtime = block.timestamp + _biddingTime;
    }

    // to send the bid request
    function bid() public payable {
        if(block.timestamp > auctionEndtime) {
            // revert keyword will stop execution here.
            revert("The auction has already ended ! ");
        }

        if(msg.value <= highestBid) {
             revert("There is already higher or equal bid. We can not accept your bid.");
        }

        // add all the bid in our mapping
        if(highestBid != 0) {
            pendingReturns[highestBidderAdrs] += highestBid;
        }

        highestBidderAdrs = msg.sender;
        highestBid = msg.value;
        emit HighestBidIncrease(msg.sender, msg.value);
    }

    function withdraw() public returns (bool) {
        uint amount = pendingReturns[msg.sender];
        if(amount > 0) {
            pendingReturns[msg.sender] = 0;
            // we will send amount to the sender.
            if(!payable(msg.sender).send(amount)) { 
                // if that fails then we need to restore the amount
                pendingReturns[msg.sender] = amount;
                return false;
            } 
        }
        return true;
    }

    // end the auction
    function auctionEnd() public {
        if(block.timestamp < auctionEndtime) {
            revert("auction has not ended yet !!");
        }

        if(isAuctionEnded) {
            revert("The function auction ended is already called!!");
        }

        isAuctionEnded = true;
        emit AuctionEnded(highestBidderAdrs, highestBid  );
        beneficiary.transfer(highestBid);
    }

}
```

## msg - what-how?

1. msg.data ⇒ unlimited size byte array
    1. The function it needs to call
    2. The arguments for that function
2. **msg.sing** ⇒ only signature of a function that is being called (not the argument)
3. **msg.value** ⇒ value sent
4. **msg.sender** ⇒ returns the address of the sender
    1. contract can also communicate with another contract
    2. in that case msg.sender will be the Etherum address of that contract 
5. **tx.origin** ⇒ it will return the origin of the transaction 

![Screenshot 2022-08-03 at 12 38 39 AM](https://user-images.githubusercontent.com/2741709/189999732-103a5f68-36d3-4701-ae5b-7d88a0ea44e8.png)

## Block - what-how?

1. block.timestamp ⇒ returns current timestamp of the block (epoc time)
2. block.chainId ⇒ current block id from the blockchain
3. block.coinbase ⇒ returns current block miner address
4. block.gaslimit ⇒ returns current block gas limit (total gas fees collected by the current block)
    1. It helps to determine that current block has enough transaction to finish the current block and move to next block
    2. Also it helps to protect the node from the attacker who could make and infinite transaction loop
5. block.number ⇒ number of the current block, also can be used as timestamp
6. block.difficulty ⇒ difficulty of current block, can be used to finding random numbers
7. blockhash() ⇒ returns the hash of the current block
8. gasleft() ⇒ returns the gas left for the current transaction

## Creating Blind Auction Contract on the blockchain using Solidity

```solidity
pragma solidity >= 0.7.0 < 0.9.0;

contract BlindAuction {

    // VARIABLES
    struct Bid {
        bytes32 blindedBid;  // hash of the bid
        uint deposit;       // deposit amount
    }

    address payable public beneficiary; // address which will get the winning amount
    uint public biddingEnd;
    uint public revealEnd;  // when the reveal will end and we wil declare the payout winner
    bool public ended;  // make this true as soon as auction is ended
    mapping (address => Bid[]) public bids; // to track all the bids - 1 person can place multiple bids
    address public highestBidder;
    uint public highestBid;
    mapping (address => uint) pendingReturns;   // to return the pending bid-tokens

    // EVENTS
    event AuctionEnded(address winner, uint highestBid);

    // MODIFIERS
    modifier onlyBefore(uint _time) {
        require(block.timestamp < _time);
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp > _time);
        _;
    }

    // FUNCTION
    constructor(uint _biddingTime, uint _revealTIme, address payable _beneficiary) {
        beneficiary = _beneficiary;
        biddingEnd = block.timestamp + _biddingTime;
        revealEnd = biddingEnd + _revealTIme;
    }

    /**
    * Cryptography encryption to accept the bid from the bidder
    * It will be a Hash value that we will record.
    * Byte32 = Hash
    **/
    function generateBlindedBidByte32(uint value, bool fake) public view returns (bytes32) {
        return keccak256(abi.encodePacked(value,fake));
    }

    /**
    * To place a bid 
    **/
    function bid(bytes32 _blindedBid) public payable onlyBefore(biddingEnd) {
        bids[msg.sender].push(Bid({
            blindedBid : _blindedBid,
            deposit : msg.value
        }));
    }

    /** 
    * Who won the bid & what all the bids were
    * _values: all the values of a bidder
    * _fake: if bid is fake or real
    **/
    function reveal(uint[] memory _values, bool[] memory _fake) 
        public 
        onlyAfter(biddingEnd) 
        onlyBefore(revealEnd) {
        // length of all the bids of a sender
        uint length = bids[msg.sender].length;
        require(_values.length == length);
        require(_fake.length == length);

        uint refund;
        // iterating over all the values
        for(uint i = 0; i < length; i++) {
            // get the bid from the saved mapping
            Bid storage bidToCheck = bids[msg.sender][i];
            // get the bid from the method args
            (uint value, bool fake) = (_values[i], _fake[i]);
            // verify
            if(bidToCheck.blindedBid != keccak256(abi.encodePacked(value,fake))) {
                continue;
            }
            refund += bidToCheck.deposit;
            if(!fake && bidToCheck.deposit >= value) {
                if(placeBid(msg.sender, value)) {
                    refund -= value;
                }
            }
            bidToCheck.blindedBid = bytes32(0); 
        }
        payable(msg.sender).transfer(refund);  
    }

    function auctionEnd() public payable onlyAfter(revealEnd) {
        require(!ended);
        emit AuctionEnded(highestBidder, highestBid);
        ended = true;
        beneficiary.transfer(highestBid);
    }

    /**
    * This function will withdraw the funds to the person who
    * is calling this method.
    **/
    function withdraw() public {
        uint amount = pendingReturns[msg.sender];   // get the amount of the person who call this
        if(amount > 0) {
            pendingReturns[msg.sender] = 0; // make his balance 0
            payable(msg.sender).transfer(amount); 
        }
    }

    /**
    * Place a bid
    **/
    function placeBid(address bidder, uint value) internal returns(bool success) {
        if(value <= highestBid) {
            return false;
        }
        if(highestBidder != address(0)) {
            // when we have highestbid we will add previous highest bidder to our map
            pendingReturns[highestBidder] += highestBid;
        }
        highestBid = value;
        highestBidder = bidder;
        return true; 
    }
}
```

## How to interact with contract from another contract

```solidity
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
        SimpleStorage simpleStorage = simpleStorageArr[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    /**
    * This function will return the favNumber for given store.
    **/
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = simpleStorageArr[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}
```

- Importing another contract and using it inside another contract.
- StorageFactory will create a contract by importing and creating its object.
- In above contract I have
    - Create two methods
        - sfStore: This will store different newly created stores into an array of store.
        - sfGet: It will return me favourite number of given store index.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "./Simple_Storage.sol";

// We are inheriting simpleStorage to this newly created ExtraStorage
contract ExtraStorage is SimpleStorage {

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }

}
```

- `is SimpleStorage` = this tells EVM to inherit the SimpleStorage into the ExtraStorage.
- To override the `store` method, we must have to
    1. mark it virtual into the parent function
    2. write `override` keyword with function which needs to be overridden

---
Before we move ahead, let's have a look at few concepts of Chainlink

![carbon (2)](https://user-images.githubusercontent.com/2741709/190002598-edc7ba6f-568f-47f3-b167-ea16a44df49a.png)
---

## FundMe Contract
Now we will be creating a FundMe contract which will

 1. Allow external user to send the funds
 2. Allow owner of the contract to withdraw the funds

```solidity
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
```

---
## PriceConvertor.sol library
```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// This interface will help us to get the ETHUSD price feed.
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConverter {
    // library 
    // 1. can not have the state varibales
    // 2. they can not send any ETH
    // 3. All the functions should be internal

     /**
    * We will get the price of the ETHUSD pair from outside using Chainlink.
    **/
    function getPrice() internal view returns(uint256) {
        // For this we will need following 2 things
        // 1. ABI - kind of blue print of the contract function
            // We will get the ABI using interface.
            // Call the interface method on address of the contract.
        // 2. Address of that contract which will provide us this feed data
            // Address from Rinkeby Testnet : 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e - ETH/USD
        // You can get the address from: https://docs.chain.link/docs/ethereum-addresses/

        // Here we are assumimg that contract at: 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
        // will be having implemented all the functions which we need
        // Here is the implementation source code for the same contract address: 
        // https://rinkeby.etherscan.io/address/0x8A753747A1Fa494EC906cE90E9f37563A8AF630e#code
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

    function getConversionRate(uint256 ethAmount) internal view returns (uint256) {
        uint256 ethPrice = getPrice(); // this will retrun ETH price in USD in uint256
        // we are removing 18 decimal otherwise we will 36 decimals
        // 1. 18 from ethPrice : 3000_000000000000000000
        // 2. 18 from ethAmount :   1_000000000000000000
        uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18; 
        // result = 3000_000000000000000000
        return ethAmountInUSD; 
    }
}
```

---
## Library

 - Library are the same as the contracts except
	
	 - They can not have state variables
	 - They can only have internal methods
	 - They can not send ETH

---

## Methods to send ETH to an address

 1. **transfer**: no loger recommanded to send ETH
```solidity
payable(msg.sender).transfer(address(this).balance)
```
Let's understand above code
- `msg.sender` -> who ever has called the withdraw function
- `transfer` -> this will initiate the transfer
- `address(this).balance` -> balance of the whole contract which is - address(this)
this will use 2300 GAS - if more GAS is used then it will throw an error
 
 2. **send**: no loger recommanded to send ETH
```solidity
bool sendSunncess = payable(msg.sender).send(address(this).balance);
require(sendSunncess, "Send failed !!");
```
This is the same as the transfer but it will not fail if required GAS is more. It will return bool on which you can take the decision.

 3. **call**: Use thid method to send ETH
```solidity
bool callSunncess = payable(msg.sender).call{value: address(this).balance}("");
require(callSunncess, "Call failed !!");
```

## How can you save GAS in your contract? (Basics)

1. Use constant - You can mark somthing constant which you are not going to change in your contract.
2. Use immutable - You can mark something immutable which is being assigned a value only once & then it is not going to change.
3. Use error rather than using require to revert the contract

## receive() & fallback()

- These are the special methods
- They do not have `function` keyword
- They do not have `arguments`
- They do not have `return` type
- They must have `external` visibility

1. receive(): This will be called when someone is sending ETH to contract address.
2. fallback(): This will be called when there is no function match with the contract.

To be continued….. 🇮🇳
