// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Constructor {
    uint256 public number = 0;
    address public _address;

    modifier onlyOwner {
        require(msg.sender == _address);
        _;
    }

    constructor (address defaultOwner) {
        _address = defaultOwner;
    }

    function changeNumber (uint256 n) external onlyOwner {
        number = n;
    }
}