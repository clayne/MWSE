--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This event is triggered when the game is about to play a sound when an item gets added or removed from an inventory, or when eaten or consumed. Can be blocked to play custom sound instead.
--- @class playItemSoundEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field item tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3baseObject|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon *Read-only*. The item for which the sound is about to be played.
--- @field reference tes3reference *Read-only*. The actor reference that picked or dropped the item that's now about to play the sound.
--- @field state tes3.itemSoundState *Read-only*. Maps to values in [tes3.itemSoundState](https://mwse.github.io/MWSE/references/item-sound-states/) namespace.
