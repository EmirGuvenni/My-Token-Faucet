// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract MyTokenFaucet is ERC20 {
    using SafeMath for uint256;

    // 10 MYT
    uint256 public constant DRIP = 10_000_000_000_000_000_000;

    mapping(address => uint256) public lockTime;

    event Drip(address indexed receiver, uint256 amount);

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function requestTokens(address requestor) external {
        require(
            block.timestamp > lockTime[msg.sender],
            "You have to wait for 5 minutes before requesting again."
        );

        _mint(requestor, DRIP);

        lockTime[msg.sender] = block.timestamp + 5 minutes;

        emit Drip(requestor, DRIP);
    }
}
