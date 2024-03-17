// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface SimpleStorageInterface {
    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    function myFavoriteNumber() external view returns (uint256);

    function listOfPeople(uint256 index) external view returns (string memory name, uint256 favoriteNumber);

    function nameToFavoriteNumber(string memory name) external view returns (uint256 favoriteNumber);

    function store(uint256 _favoriteNumber) external;

    function retrieve() external view returns (uint256);

    function addPerson(string memory _name, uint256 _favoriteNumber) external;

    function euclidGCF(
        uint256 a,
        uint256 b
    ) external pure returns (uint256 gcf, uint8 thzero);

    /** Getter Function */
    function getPerson(
        uint256 index
    ) external view returns (string memory name, uint256 favoriteNumber);

    function getNameToFavoriteNumber(
        string memory _name
    ) external view returns (uint256 favoriteNumber);

    // Other getter functions
    function getPersonTuple(
        uint256 index
    ) external view returns (Person memory);

    function getPeopleTuple() external view returns (Person[] memory);
}
