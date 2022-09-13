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