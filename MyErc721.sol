pragma solidity ^0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol';

contract MyErc721 is ERC721{
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        _mint(msg.sender, 1);
    }
}
