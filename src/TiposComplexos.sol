// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract TiposComplexos {
    struct Person {
        string name;
        uint age;
    }

    Person public person;
    Person[] array;

    function addPerson(string calldata _name, uint _age) public {
        person.name = _name;
        person.age = _age;
    }

    function getPerson(uint i) public view returns (Person memory) {
        return array[i];
    }

    function addElement(string calldata _name, uint _age) public {
        Person memory personMemory;
        personMemory.name = _name;
        personMemory.age = _age;
        array.push(personMemory);
    }
}
