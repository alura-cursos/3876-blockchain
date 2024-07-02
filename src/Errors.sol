// SPDX-License-Identifier: MIT pragma solidity ^0.8.24;
// require -> require(condition, "error message");
// revert -> revert("error message");
// assert -> assert(condition);

contract Errors {
    uint256 public num;
    
    function testRequire(uint256 _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        if (_i <= 10) { 
            revert("Input must be greater than 10");
        }
    }
    
    function testAssert() public view { 
        assert(num == 0);
    }

    function setNum(uint256 _num) public {
        num = _num;
    }

    error InsufficientBalance(uint256 available, uint256 required);

    function checkWithdrawalLimit(uint256 _amount) public view {
        uint256 currentBalance = address(this).balance;
        if (currentBalance < _amount) {
            revert InsufficientBalance({
                available: currentBalance,
                required: _amount
            });
        }
    }
}
