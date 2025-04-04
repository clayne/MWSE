--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- The cellChanged event is triggered when the player changes cells. This might occur from going through a door, using intervention or recall spells, or from scripted repositioning.
--- @class cellChangedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field cell tes3cell *Read-only*. The new cell that the player has entered.
--- @field previousCell tes3cell *Read-only*. The previous cell that the player came from. This will be nil when loading a game.
