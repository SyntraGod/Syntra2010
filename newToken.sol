pragma solidity ^0.8.0;

import "./ERC20.sol";

contract newToken is ERC20 {
    address public admin;

    constructor() ERC20("Syntra", "SYN") {
        _mint(msg.sender, 100000 * 10 * 18);
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "only admin");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
