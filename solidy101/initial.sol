// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Initial {
    bool public _bool; // false
    string public _string; // ""
    int public _int; // 0
    uint public _uint; // 0
    address public _address; // 0x0000000000000000000000000000000000000000

    enum ActionSet { Buy, Hold, Sell}
    ActionSet public _enum; // 第1个内容Buy的索引0

    function fi() internal{} // internal空白函数
    function fe() external{} // external空白函数 

    // 引用类型初始值
    uint[8] public _staticArray;
    mapping(uint => address) public _mapping;
    bytes1[] public _bytes1Array;
    bytes1 public _bytes1;
    bytes public _bytes;

    function addArrayValue (uint key, uint number) external {
        _staticArray[key] = number;
    }

    // 删除会恢复为初始值
    function deleteArrayValue (uint key) external {
        delete _staticArray[key];
    }
}