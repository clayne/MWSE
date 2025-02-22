--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This event is raised when the potential activation target for the player changes.
--- @class activationTargetChangedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field current tes3reference *Read-only*. The activation target for the player, should they press the activation key. This can be nil when the player is not looking at an activateable object.
--- @field previous tes3reference *Read-only*. The previous activation target. If the player picked up or activated the previous target, this value may become nil, as the reference no longer exists after being taken.
