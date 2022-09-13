pragma solidity >=0.4.16 < 0.9.0; // defines which solidity version it will support

// just like a class form Java
contract SimpleStorage {
    
    uint storedData; // unsign integer

    /*
    * public : tells that this contract can be accessed from outside of this contract.
    */
    function set(uint data) public {
        storedData = data;
    }

    /*
    * view : this tells that this function will never change anything in the contract
    */
    function get() public view returns(uint) {
        return storedData;
    }

}