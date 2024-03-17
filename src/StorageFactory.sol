// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";
import {SimpleStorageInterface} from "./SimpleStorageInterface.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createNewSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    // Address and ABI(Application Binary Interface)

    // contract
    function sf_myFavoriteNumber(
        uint256 contractIndex
    ) public view returns (uint256) {
        return listOfSimpleStorageContracts[contractIndex].myFavoriteNumber();
    }

    function sf_listOfPeople(
        uint256 contractIndex,
        uint256 index
    ) public view returns (string memory name, uint256 favoriteNumber) {
        return listOfSimpleStorageContracts[contractIndex].listOfPeople(index);
    }

    function sf_addPerson(
        uint256 contractIndex,
        string memory name,
        uint256 favoriteNumber
    ) public {
        listOfSimpleStorageContracts[contractIndex].addPerson(
            name,
            favoriteNumber
        );
    }

    function sf_nameToFavoriteNumber(
        uint256 contractIndex,
        string memory name
    ) public view returns (uint256) {
        return
            listOfSimpleStorageContracts[contractIndex].nameToFavoriteNumber(
                name
            );
    }

    function sf_store(uint256 contractIndex, uint256 favoriteNumber) public {
        listOfSimpleStorageContracts[contractIndex].store(favoriteNumber);
    }

    function sf_retrieve(uint256 contractIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[contractIndex].retrieve();
    }

    function sf_euclidGCF(
        uint256 contractIndex,
        uint256 a,
        uint256 b
    ) public view returns (uint256, uint8) {
        return listOfSimpleStorageContracts[contractIndex].euclidGCF(a, b);
    }

    function sf_getPerson(
        uint256 contractIndex,
        uint256 index
    ) public view returns (string memory, uint256) {
        return listOfSimpleStorageContracts[contractIndex].getPerson(index);
    }

    function sf_getNameToFavoriteNumber(
        uint256 contractIndex,
        string memory name
    ) public view returns (uint256) {
        return
            listOfSimpleStorageContracts[contractIndex].getNameToFavoriteNumber(
                name
            );
    }

    function sf_getPersonTuple(
        uint256 contractIndex,
        uint256 index
    ) public view returns (SimpleStorage.Person memory) {
        return
            listOfSimpleStorageContracts[contractIndex].getPersonTuple(index);
    }

    function sf_getPeopleTuple(
        uint256 contractIndex
    ) public view returns (SimpleStorage.Person[] memory) {
        return listOfSimpleStorageContracts[contractIndex].getPeopleTuple();
    }

    // Interface
    function sfi_myFavoriteNumber(
        address contractAddress
    ) public view returns (uint256) {
        return SimpleStorageInterface(contractAddress).myFavoriteNumber();
    }

    function sfi_listOfPeople(
        address contractAddress,
        uint256 index
    ) public view returns (string memory name, uint256 favoriteNumber) {
        return SimpleStorageInterface(contractAddress).listOfPeople(index);
    }

    function sfi_addPerson(
        address contractAddress,
        string memory name,
        uint256 favoriteNumber
    ) public {
        SimpleStorageInterface(contractAddress).addPerson(name, favoriteNumber);
    }

    function sfi_nameToFavoriteNumber(
        address contractAddress,
        string memory name
    ) public view returns (uint256) {
        return
            SimpleStorageInterface(contractAddress).nameToFavoriteNumber(name);
    }

    function sfi_store(address contractAddress, uint256 favoriteNumber) public {
        SimpleStorageInterface(contractAddress).store(favoriteNumber);
    }

    function sfi_retrieve(
        address contractAddress
    ) public view returns (uint256) {
        return SimpleStorageInterface(contractAddress).retrieve();
    }

    function sfi_euclidGCF(
        address contractAddress,
        uint256 a,
        uint256 b
    ) public pure returns (uint256, uint8) {
        return SimpleStorageInterface(contractAddress).euclidGCF(a, b);
    }

    function sfi_getPerson(
        address contractAddress,
        uint256 index
    ) public view returns (string memory, uint256) {
        return SimpleStorageInterface(contractAddress).getPerson(index);
    }

    function sfi_getNameToFavoriteNumber(
        address contractAddress,
        string memory name
    ) public view returns (uint256) {
        return
            SimpleStorageInterface(contractAddress).getNameToFavoriteNumber(
                name
            );
    }

    function sfi_getPersonTuple(
        address contractAddress,
        uint256 index
    ) public view returns (SimpleStorageInterface.Person memory) {
        return SimpleStorageInterface(contractAddress).getPersonTuple(index);
    }

    function sfi_getPeopleTuple(
        address contractAddress
    ) public view returns (SimpleStorageInterface.Person[] memory) {
        return SimpleStorageInterface(contractAddress).getPeopleTuple();
    }
}
