// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    uint8 a = 1;         // 8-bit inteiro sem sinal (0 a 255)
    uint16 b = 65535;    // 16-bit inteiro sem sinal (0 a 65535)
    uint256 c = 100000000; // 256-bit inteiro sem sinal (0 a 2^256-1)

    int8 d = -128;        // 8-bit inteiro com sinal (-128 a 127)
    int16 e = 32767;      // 16-bit inteiro com sinal (-32768 a 32767)
    int256 f = -100000000; // 256-bit inteiro com sinal (-2^255 a 2^255-1)

    bool isReady = true;
    bool hasBalance = false;

    address owner = 0x1234567890123456789012345678901234567890;
    address payable payableOwner = payable(owner);

    string greeting = "Hello, World!";
    string name = "Alice";

    enum State { Created, Locked, Inactive }
    State public state;

    event Added(uint value);

    // public, internal, external, private
    function getGreeting() public returns (string memory) {
        return "Hello, World!";
    }

    // pure, view
    function getGreetingPure() public pure returns (string memory) {
        return "Hello, World!";
    }

    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function addWithEvent(uint _a, uint _b) public returns (uint) {
        uint _c = _a + _b;
        emit Added(_c);
        return _c;
    }

    function getNameView() public view returns (string memory) {
        return name;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function getNameViewOnlyOwner() public view onlyOwner returns (string memory) {
        return name;
    }
}
