# Foundry Solidity Contracts ReadMe

Welcome to the repository containing Solidity smart contracts developed with Foundry. These contracts facilitate simple storage and manipulation of data. Below is an overview of each contract included.

## Contracts

### 1. SimpleStorage.sol

This contract provides a basic storage mechanism along with fundamental functionality for data storage and retrieval. It includes:

- Storage of a favorite number (`myFavoriteNumber`) and a list of people (`listOfPeople`) with their favorite numbers.
- Functions for storing and retrieving favorite numbers, adding people with their favorite numbers, and computing the greatest common factor of two numbers.

### 2. AddFiveStorage.sol

Extending the functionality of `SimpleStorage.sol`, this contract adds five to the stored favorite number upon storage.

### 3. SimpleStorageInterface.sol

An interface defining the structure and functions of the `SimpleStorage` contract, enabling interaction with contracts implementing this interface.

### 4. StorageFactory.sol

This contract serves as a factory for creating instances of `SimpleStorage` contracts. It provides methods for interacting with these contracts using both direct contract access and the interface.

## Usage

To utilize these contracts with Foundry, follow these steps:

1. **Compile**: Compile the Solidity contracts using Foundry's integrated Solidity compiler.
2. **Deploy**: Deploy the desired contract(s) to the Ethereum blockchain using Foundry's deployment tools.
3. **Interact**: Interact with the deployed contracts using their respective functions as per your requirements.

## Development Environment

Ensure you have Foundry's development environment set up with a compatible Solidity compiler and deployment tool.

## License

These contracts are licensed under the MIT License. Refer to the individual contract files for details.
