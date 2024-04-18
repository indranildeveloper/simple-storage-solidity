// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
  uint256 favoriteNumber; // -> Storage variable automatically

  mapping(string => uint256) public nameTofavouritenumber;

  // Creating a new type
  struct People {
    uint256 favoriteNumber;
    string name;
  }

  People[] public people;

  function store(uint256 _favoriteNumber) public virtual {
    favoriteNumber = _favoriteNumber;
    retrieve();
  }

  function retrieve() public view returns (uint256) {
    return favoriteNumber;
  }

  function add() public pure returns (uint256) {
    return (1 + 1);
  }

  function addPerson(string memory _name, uint256 _favouriteNumber) public {
    people.push(People(_favouriteNumber, _name));
    nameTofavouritenumber[_name] = _favouriteNumber;
  }
}
