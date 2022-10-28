// contracts/GreenSatoshiToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./Ownable.sol";

/**
 * Green Satoshi Token
 * @author STEPN
 */
contract GreenSatoshiToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("GreenSatoshiToken", "GST") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }
}