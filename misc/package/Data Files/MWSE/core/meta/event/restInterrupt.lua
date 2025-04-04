--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This event is invoked when a rest is about to be interrupted. The ambushing spawn can be overridden by changing the creature parameter.
--- @class restInterruptEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field creature tes3creature|tes3npc|tes3leveledCreature The creature that is interrupting rest. Can be set to a creature, NPC, or leveled creature.
--- @field resting boolean *Read-only*. If true, the player is attempting to rest, as opposed to wait.
--- @field waiting boolean *Read-only*. If true, the player is attempting to wait, as opposed to rest.
