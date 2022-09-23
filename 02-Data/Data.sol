// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data Types - values and references   

contract ValueTypes {
    bool public b = true;
    uint public u =123; //uint = uint256 0 to 2**256 - 1
                        //       uint8   0 to 2**8 - 1
                        //       uint16  0 to 2**16 - 1
    int public a = -123;
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0xd369BA595BB625AE96998BF7A3E6bec5A4dC029F;
    bytes32 public b32
}