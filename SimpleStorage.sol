// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract SimpleStorage{
    uint256 public favoriteNumber;
    // People public person = People({favoriteNumber:2, name:"Jane"});

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] favoriteNumbersList;
    People[] public people;

    function store (uint256 _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People(_favoriteNumber, _name);
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}