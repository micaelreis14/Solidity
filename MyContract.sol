pragma solidity 0.5.1;

import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol"; 
import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract MyContract {
    Person[] public people;

    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}