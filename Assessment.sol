// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {
    uint public a = 25;
    uint public b = 50;
    uint public c;
    uint public x;

    function testRequire(uint i) public pure returns (uint) {
        require(i == 50, "The value passed is not equal to 50");

        uint y = 100;
        return (y);
    }

    function testAssert() public view returns (uint) {
        assert(x == 0);

        uint y = 200;
        return (y);
    }

    function testRevert(uint i) public {
        c = a + b;
        if(i != 0) revert("Input given is not zero");
    }
}