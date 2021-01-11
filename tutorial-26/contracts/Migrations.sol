pragma solidity ^0.4.17;

/** @title I want to create an migration contract which allows to update contracts for every changes and hence change the owner also ( if needed ).
  @notice 
  @param owner address of the user who invokes the contract
  @param last_completed_migration  previous version of the contract 
 */


contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function Migrations() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
