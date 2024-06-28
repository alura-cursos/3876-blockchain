// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract Derivado is Base {
    bool public isDataUpdated;

    constructor(uint _initialData) Base(_initialData) {
        isDataUpdated = false;
    }

    function setData(uint _data) public override {
        super.setData(_data);
        isDataUpdated = true;
    }

    function resetUpdateStatus() public {
        isDataUpdated = false;
    }

}
