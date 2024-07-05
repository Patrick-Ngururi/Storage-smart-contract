// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    
    /*Person public pato = Person({favoriteNumber: 8, name: "Pato"});
    Person public Maria = Person({favoriteNumber: 9, name: "Maria"});
    Person public Lisa = Person({favoriteNumber: 7, name: "Lisa"});*/
    
    // dynamic array
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

	// EVM Storage areas: stack, memory, storage, calldata, code, logs
    // calldaata & memory are temporary

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
