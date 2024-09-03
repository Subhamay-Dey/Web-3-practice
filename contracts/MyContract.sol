// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyContract {
    //State variables
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, world!";
    bytes16 public myBytes16 = "Hello, Solidity";

    address public myAddress = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    struct Mystruct {
        uint256 myUnit256;
        string myString;
        address myAddress;
    }

    Mystruct public mystruct1 = Mystruct(10, "I am Subhamay", 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    //Local variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}
