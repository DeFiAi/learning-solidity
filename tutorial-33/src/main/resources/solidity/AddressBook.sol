

/**


pragma solidity ^0.4.0;


/** @title: i want an  Contract for defining the the address property along with alias name 
consist of the addresses and their alianses . 
@param : 1. _addresses : address  for the particular entity 
2.  _aliases : associated  identity for the function 
**/
contract AddressBook {
    mapping(address => address[]) private _addresses;
    mapping(address => mapping(address => string)) private _aliases;


    /// returns the adress of owner 
    /// @param address array  storing all the adresses of the id.
    /// @dev retrives the value of address with address of msg.sender
    /// @return address for the given entity . 
    function getAddresses() public view returns (address[]) {
        return _addresses[msg.sender];
    }

    /// creates the new address 
    /// @dev  adds the record for given id and address  of the user 
    /// @return  


    function addAddress(address addr, string alias) public {
        _addresses[msg.sender].push(addr);
        _aliases[msg.sender][addr] = alias;
    }

    ///  removing the address from the addressbook
    /// @dev delete the _addresses  and _aliases based on the given addr . 
    /// @return 


    function removeAddress(address addr) public {
        uint length = _addresses[msg.sender].length;
        for(uint i = 0; i < length; i++) {
            if (addr == _addresses[msg.sender][i]) {
                if (1 < _addresses[msg.sender].length && i < length-1) {
                    _addresses[msg.sender][i] = _addresses[msg.sender][length-1];
                }
                delete _addresses[msg.sender][length-1];
                _addresses[msg.sender].length--;
                delete _aliases[msg.sender][addr];
                break;
            }
        }
    }
 
    /// get the identity 
    /// @dev  
    /// @return aliases id of the contract owner and address . 
   

    function getAlias(address addr) public view returns (string) {
        return _aliases[msg.sender][addr];
    }
}
