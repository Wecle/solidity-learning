// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Mapping {
    mapping(uint => uint) public uintMap;
    mapping(uint => address) public addressMap;

    function setUintMap (uint key, uint value) public {
        uintMap[key] = value;
    }
}