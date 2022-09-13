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