pragma solidity ^0.4.0;

/** @title I want to create contract called gas which allows  finding the ethereum transaction gas parameters 
@param dataStore it is the array of strings which consist of the transactions   
@dev depends on  following libraries 
1. solidity version greater than 0.4
 */



contract Gas {

    string[] dataStore;

/// @dev basically adds the 

    function cheap(uint a, uint b)
        public
        pure
        returns (uint c)
    {
        c = a + b;
    }

    function expensive(string memory val)
        public
    {
        dataStore.push(val);
    }

    function average()
        public
        view
        returns (string memory)
    {
        return dataStore[0];
    }

    function low()
        public
        pure
        returns (string memory)
    {
        string memory myString = "test";
        return myString;
    }
}
