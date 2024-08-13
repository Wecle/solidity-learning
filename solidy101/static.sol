// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Static {
    uint256 constant CONSTANT_NUM = 0;

    uint256 immutable IMMUTABLE_NUM;

    constructor () {
        IMMUTABLE_NUM = 1;
    }

    function test () external view returns (uint256) {
        return IMMUTABLE_NUM;
    }
}