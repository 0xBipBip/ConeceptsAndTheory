// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

In Solidity, the underscore prefix `_variable` is a naming convention used to differentiate local variables 
from state variables and function parameters. It helps to avoid naming conflicts and enhances code readability.

Here's a breakdown of the naming conventions commonly used in Solidity:

1. State variables: These are variables declared at the contract level and represent the contract's persistent storage. 
It is a best practice to prefix state variables with the `this` keyword or the contract name to clearly indicate their 
state nature. For example:

   contract MyContract {
       uint256 public myStateVariable;
   }
   
   In this case, the state variable `myStateVariable` represents the contract's persistent storage and can be accessed by 
   other contracts or external entities.

2. Function parameters and local variables: These are variables used within functions or modifiers to hold temporary values 
or function arguments. To differentiate them from state variables, a common convention is to prefix them with an underscore. 
For example:

   contract MyContract {
       function myFunction(uint256 _param) public {
           uint256 _localVariable = 10;
       }
   }

   In this example, `_param` is a function parameter, and `_localVariable` is a local variable. The underscore prefix makes it 
   clear that they are not state variables but rather temporary variables used within the scope of the function.

Using the underscore prefix is not mandatory in Solidity, but it's considered good practice as it helps to distinguish between 
different types of variables and reduces the likelihood of naming conflicts. It improves code readability and makes it easier 
for developers to understand the purpose and scope of variables.