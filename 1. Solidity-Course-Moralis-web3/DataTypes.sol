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
        // players.push(Player(fname, lname)); -> to push in array
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