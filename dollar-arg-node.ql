//Use this library to rewrite your previous query, 
//that gets you all the first argument to a call to $. 
//Use a new file dollar-arg-node.ql.

//Notice that when you call jquery(), getACall(), and getArgument() in succession, 
//you get return values of type DataFlow::Node, and not Expr as in your previous 
//query, so you have to change your return variable to have this type.
//We want to identify the expression that is used as the first argument for 
//each call, such as in $(<first-argument>).

//The CodeQL standard library for JavaScript has a built-in predicate jquery() 
//to describe references to $.
//Calling the predicate jquery() returns all values that refer to the $ function, 
//and chaining this call with getACall(), will give you all calls to this function.

import javascript

from DataFlow::Node argExpr
where   argExpr = jquery().getACall().getArgument(0)
select argExpr