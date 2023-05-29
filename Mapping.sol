// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

//Mapping sintax
// mapping (KeyType => ValueType) public myMapping;

//For example, let's create a simple mapping that associates names (strings) with ages (uint):
contract MyContract {
    //we declare a mapping called ages that associates strings (names) with unsigned integers (ages). 
    //The ages mapping is public, so it can be accessed from outside the contract.
    mapping(string => uint) public ages;

    //The setAge function allows us to set the age for a given name. It takes two parameters: a string 
    //(name) and an unsigned integer (age). Using the mapping syntax ages[name] = age, we assign the age value 
    //to the corresponding name.
    function setAge(string memory name, uint age) public {
        ages[name] = age;
    }
    
    //The getAge function retrieves the age associated with a specific name. It takes a string (name) as 
    //a parameter and uses the mapping syntax return ages[name] to retrieve and return the age value.
    function getAge(string memory name) public view returns (uint) {
        return ages[name];
    }
}
---------------------------------------------------------------------------------------------------------------

contract MyContract {
    mapping(string => uint) public ages;

    //In the setAge function, there is no need for a return statement because the function doesn't have a return
    //type specified. It updates the mapping and doesn't need to return anything.
    function setAge(string memory name, uint age) public {
        ages[name] = age;
        // No return statement because the function has a void return type
    }

    //In the getAge function, the returns (uint) specifies that the function should return a value of type uint. 
    //Therefore, the return keyword is used to explicitly return the age value associated with the provided name.
    function getAge(string memory name) public view returns (uint) {
        return ages[name];
        // The return keyword is used to explicitly return the value from the function
    }
} 
   //It's important to note that functions with a return type in Solidity must include the return statement to 
   //specify the value that will be returned. Functions without a return type (void functions) don't require a return statement.

---------------------------------------------------------------------------------------------------------------

contract Mapping {
    // Mapping use this sintax:
    // mapping(KeyType => ValueType) mappingName;

    mapping (address => uint) public myMap;

    function get (address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        // The default value for uint is 0
        return myMap[_addr];
    }
}

contract NestedMappings {
    // Mapping from address => (mapping from uint to bool)
    mapping(address => mapping(uint => bool)) public nestedMap;
