// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 favouriteNumber;
    mapping(string => uint256) public nameToFavouriteNumber;
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    People[] public people;

    function store(uint256 _favouriteNumber) public{
        favouriteNumber = _favouriteNumber;
    }

    function retreive() public view returns(uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

}