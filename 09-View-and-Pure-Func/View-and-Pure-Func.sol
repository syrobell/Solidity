// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract viewPureDiff{

    uint public num = 2;

    function viewFunc() external view returns (uint){
        return num + num;
    }
    function pureFunc() external pure returns (uint) {
        return 1;
    }

 
}


