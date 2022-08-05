// Step 6 - Finding jQuery property reads

/*jQuery plugins are usually defined by assigning a value to a property of the $.fn object:


$.fn.copyText = function() { ... } // this function is a jQuery plugin
 

In the following steps, we'll find such plugins, and their options. We'll find

- where the property $.fn is read
- the functions that are assigned to properties of $.fn
- the option parameters of these functions
*/ 

//You have already seen how to find references to the jQuery $ function. 
//Now find all places in the code that read the property $.fn. These results of your query will be of type DataFlow::Node.
//
//Notice that jquery() returns a value of type DataFlow::SourceNode, from which the flow of data may be tracked. 
//Use the auto-completion feature after jquery(). to browse the predicates of this DataFlow::SourceNode type, and their documentation. 
//Look for a predicate that gets you all reads of a property named fn.


import javascript

from DataFlow::Node node
where   node = jquery().getAPropertyRead("fn")
select node