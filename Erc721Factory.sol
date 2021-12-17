pragma solidity ^0.8.0;

import './MyErc721.sol';

contract Factory {
    address[] tokenAddress;

    function deploy721Contract(
        string memory name,
        string memory symbol
    )external returns (MyErc721){
        MyErc721 newCredits = new MyErc721(name, symbol);
        tokenAddress.push(address(newCredits));
        return newCredits;
    }
}
