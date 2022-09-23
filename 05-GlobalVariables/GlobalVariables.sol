// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables{
    function globalVars() external view returns(address, uint, uint){
        address sender = msg.sender; //msg.sender is the address of current users.
        uint timestamp = block.timestamp; //block.timestamp is the timestamp when the block created.
        uint blockNum = block.number; // block.number is the number of the block
        return(sender, timestamp, blockNum);
    }
}