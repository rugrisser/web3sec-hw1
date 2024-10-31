// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWETH is IERC20 {
    function deposit() external payable;
    function withdraw(uint wad) external;
}

contract WethExchange {

    IWETH public immutable weth;

    constructor(address _weth) {
        require(_weth != address(0), "Invalid address");
        weth = IWETH(_weth);
    }

    function wrapETH() external payable {
        require(msg.value > 0, "Please deposit ETH to wrap");
        weth.deposit{value: msg.value}();
        require(weth.transfer(msg.sender, msg.value), "WETH transfer failed");
    }

    function unwrapETH(uint256 amount) external {
        require(amount > 0, "Please provide withdraw amount");
        require(weth.transferFrom(msg.sender, address(this), amount), "Transfer failed");

        weth.withdraw(amount);
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "ETH transfer failed");
    }
}
