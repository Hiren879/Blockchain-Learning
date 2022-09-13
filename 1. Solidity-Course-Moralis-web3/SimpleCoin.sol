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