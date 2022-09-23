// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enum{
    enum shipStatus{
        None,
        Pending,
        Shipped,
        Completed,
        Rejeceted,
        Canceled
    }

    shipStatus public status;


    function get() view external returns(shipStatus){
        return status;
    }

    function set(shipStatus _status) external{
        status = _status;
    }

    function ship() external{
        status = shipStatus.Shipped;
    }
    function reset() external{
        delete status;
    }
}