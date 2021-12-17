pragma solidity ^0.8.0;

// import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol';
import './MyErc20.sol';

contract Factory {
    address[] tokenAddress;

    function deploy20Contract(
        string memory name,
        string memory symbol
    )external returns (MyToken){
        MyToken newCredits = new MyToken(name, symbol);
        tokenAddress.push(address(newCredits));
        return newCredits;
    }
}
