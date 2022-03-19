// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.5.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.5.0/access/Ownable.sol";

contract WTMToken is ERC20, Ownable {

    uint256 public rate = 1000 * 1 ** decimals();

    constructor() ERC20("WTMToken", "WTM") {
        _mint(msg.sender, 1000000 * 1 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
        
    }

    function buyToken(uint256 _numberOfToken) public payable returns(uint256){
        uint256 amountToBuy = rate + _numberOfToken;
        return amountToBuy;
    }
}
