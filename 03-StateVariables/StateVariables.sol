// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables{
    uint public uvar = 123; //meaning of StateVariable is variable that inside of a blockchaing the value in it always same and always be in the blockchain.
    // so this is a stateVariable because its inside the contract so its inside the block.

    function foo() external{
        uint notStateVariable = 456; 
        //So this is not a state variable because its in a function when the function executed variable has a value but after running 
        //function again it could be different value
    }
}