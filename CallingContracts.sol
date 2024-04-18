// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract CallingContract1 {
    uint256 public x = 20;

    function setValue(uint256 _x) public {
        x = _x;
    }

    function getValue() public view returns (uint256) {
        return x;
    }
}

contract CallingContract2 {
    // uint256 public y;

    function setValue(CallingContract1 callee, uint256 _x) public {
        callee.setValue(_x);
        // return y;
    }
}
