// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor{
    address public owner;
    uint public x;

    constructor(uint _x){ // Constructor contract deploy edilmeden önce bir kere alınan veridir. Program çalışırken bu veriler değiştirilemez
    // ve sabittir. Örneğin kullanıcının cüzdan numarasının sabit olması gerektiği gibi bilgiler program çalışırken en başta elde edilir ve sabit kalır.
    // Contract deploy edildikten sonra çağırılamaz.
        owner = msg.sender;
        x = _x;
    }
}