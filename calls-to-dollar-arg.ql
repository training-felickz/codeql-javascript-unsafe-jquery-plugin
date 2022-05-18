//We want to identify the expression that is used as the first argument for 
//each call, such as in $(<first-argument>).



import javascript

from CallExpr dollarCall, Expr expression
where dollarCall.getCalleeName() = "$" and
        expression = dollarCall.getArgument(0)
select dollarCall, expression