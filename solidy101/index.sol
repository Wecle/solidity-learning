// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract HelloWeb3 {
    string public _string = "Hello World!";

    uint256 public number = 5;

    function add () external {
        number = number + 1;
    }

    function getPureNumber (uint256 _number) external pure returns (uint new_number) {
        new_number = _number + 1;
    }

    function getViewNumber () external view returns (uint256 new_number) {
        new_number = number + 1;
    }

    function addInternalNumber () internal {
        number += 1;
    }

    function addExternalNumber () external {
        addInternalNumber();
    }

    // payable: 递钱，能给合约支付eth的函数
    function minusPayable() external payable returns(uint256 balance) {
        addInternalNumber();    
        balance = address(this).balance;
    }
}