// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    uint256 public myFavoriteNumber;

    Person[] public listOfPeople;

    mapping(string name => uint256 favoriteNumber) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person(_name, _favoriteNumber);
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function euclidGCF(
        uint256 a,
        uint256 b
    ) public pure returns (uint256 gcf, uint8 thzero) {
        while (b > 0) {
            (a, b) = (b, a % b);
        }
        return (a, uint8(b));
    }

    /** Getter Function */
    function getPerson(
        uint256 index
    ) external view returns (string memory name, uint256 favoriteNumber) {
        return (listOfPeople[index].name, listOfPeople[index].favoriteNumber);
    }

    function getNameToFavoriteNumber(
        string memory _name
    ) external view returns (uint256 favoriteNumber) {
        return nameToFavoriteNumber[_name];
    }

    // Other getter functions
    function getPersonTuple(
        uint256 index
    ) external view returns (Person memory) {
        return listOfPeople[index];
    }

    function getPeopleTuple() external view returns (Person[] memory) {
        return listOfPeople;
    }
}
