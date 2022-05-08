// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MostSimpleMintERC1155 is ERC1155, Ownable {
    string public name = "Most Basic Upload. Lots of typing here!";
    constructor() ERC1155("ipfs://<Insert Meta data CID from IPFS>/{id}.json") //IPFS location.
    {
        _mint(msg.sender, 0, 1, ""); //account name, token id, quantity, data
        _mint(msg.sender, 1, 2, ""); //account name, token id, quantity, data
        _mint(msg.sender, 2, 3, ""); //account name, token id, quantity, data
    }
}
