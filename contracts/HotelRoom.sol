// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HotelRoom {
    address payable public owner;

    event Occupy(address _occupant, uint _value);

    enum Status {
        Vacant,
        Occupied
    }

    Status public currentStatus;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier onlyWhileVacant {
        //Check Status
        require(currentStatus == Status.Vacant, "Currently occupied");
        _;
    }

    modifier price(uint _amount) {
        //Check Price
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function book() public payable onlyWhileVacant price(2 ether) {

        currentStatus = Status.Occupied;

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}