return {
	type = "method",
	description = [[Log a `DEBUG` message. This will only be printed if the current logging level is `DEBUG` or higher.
If multiple arguments are passed, then they will be passed to `string.format`.
	
All `table` or `userdata` arguments will be prettyprinted.
You can also pass a function as the first or second parameter to lazily evaluate log statements.
See the [Writing More Useful Log Messages](../guides/logging.md#writing-more-useful-log-messages) 
and [Passing Functions to Logging Methods](../guides/logging.md#passing-functions-to-the-logging-methods) 
sections of the [Logging Guide](../guides/logging.md) 
for more information.

!!! note "Shorthand Syntax"
	This method can also be called by writing `log(message, ...)` instead of `log:debug(message, ...)`.

]],
	arguments = {
		{ name = "message", type = "string|fun(...): ..." },
		{ name = "...", type = "any", description = "Formatting arguments. These are passed to `string.format`. Tables and userdata values are pretty printed.", optional = true },
	}
}
