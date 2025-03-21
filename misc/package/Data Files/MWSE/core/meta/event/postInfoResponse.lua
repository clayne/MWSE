--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This event fires immediately after a dialogue response is processed.
--- @class postInfoResponseEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field command string *Read-only*. The command.
--- @field dialogue tes3dialogue *Read-only*. The dialogue object.
--- @field info tes3dialogueInfo *Read-only*. The dialogue info object.
--- @field reference tes3reference *Read-only*. The reference.
--- @field variables tes3scriptVariables *Read-only*. The script variables.
