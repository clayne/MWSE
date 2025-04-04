--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- Table returned by the `tes3script:getVariableData` and `tes3scriptContext:getVariableData` methods.
--- @class tes3scriptVariableData
--- @field index integer *Read-only*. The order of occurrence of the variable in the script, starting from `0`.
--- @field type string *Read-only*. The mwscript variable type.
--- 
--- Type | Description
--- ---- | -----------
--- `s`  | The variable is of `short` type.
--- `f`  | The variable is of `float` type.
--- `l`  | The variable is of `long` type.
--- 
--- @field value number|nil The current value of the variable.
