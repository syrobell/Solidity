// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionsIntro {

    function add(uint a, uint b) external pure returns(uint){
        return a + b;
    }

    function sub(uint a, uint b) external pure returns (uint){
        return a - b;
    }

    uint public total;

    function times(uint a, uint b) public {
        total = a * b; 
    } //Its not returning a value but stores data in "total" variable if you call "total" you can see the result.
}