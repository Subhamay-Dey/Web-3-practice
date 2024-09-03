// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint count;

    constructor()  {
        count = 0;
    }

    // once the public is assigned then it gives a inbuilt func of the var which simply shows the value it is holding
    //So this getCount func have no need anymore becoz of the public keyword
    function getCount() public view returns(uint) {
        return count;
    }

    // or
    // unit public count = 0;

    function incrementCount() public {
        count = count + 1;
    }
}