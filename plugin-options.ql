// 1. Modify your from clause so that the variable that describes that jQuery plugin is of type DataFlow::FunctionNode. 
//      As the name suggests, this is a data flow node that refers to a function definition. 
//      By typing this variable with this type, your query will restrict the possible values for your plugin variable to this type only.
// 2. Use auto-completion on that variable to browse the predicates of DataFlow::FunctionNode and find the one that will get you the last parameter of that function. 
//      This parameter is typed DataFlow::ParameterNode
// 3. Modify your select statement to return both the plugin and the parameter.


import javascript


from DataFlow::FunctionNode plugin
where plugin = jquery().getAPropertyRead("fn").getAPropertySource()
select plugin, plugin.getLastParameter()
