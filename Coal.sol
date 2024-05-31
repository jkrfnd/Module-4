// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing libraries for ERC20 token and ownership functionality
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/access/Ownable.sol";

// The contract for our token, named DegenToken
contract DegenToken is ERC20, Ownable {
    // When the contract is created, it mints (creates) 1,000,000 tokens and gives them to the creator
    constructor() ERC20("CoalToken ", "Coal") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Function to mint (create) new tokens and give them to an address
    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    // Function to allow someone to burn (destroy) their tokens
    function redeem(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Function to allow someone to burn (destroy) their tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}