//We want to identify the expression that is used as the first argument for 
//each call, such as in $(<first-argument>).



import javascript

from CallExpr dollarCall, Expr argExpr
where   dollarCall.getCalleeName() = "$" and
        argExpr = dollarCall.getArgument(0)
select argExpr