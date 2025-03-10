--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This event triggers when a power is recharged, and may be used again. In Morrowind, powers are a type of spells which may be cast once per day and don't cost any magicka.
--- @class powerRechargedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The actor whose power recharged.
--- @field power tes3spell *Read-only*. A power which recharged.
--- @field reference tes3reference *Read-only*. Mobile’s associated reference.
