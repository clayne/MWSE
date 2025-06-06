--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- Item stack represents all copies of an item with the same id inside an inventory. This complex container holds a relationship between an item, and zero or more associated item datas. The `itemStack.variables` is a list of different itemData for each item in the stack, not a single itemData. Not every item in the stack needs to have associated itemData. The game adds itemData to items on equipping with the exception of thrown weapons and ammo.
--- 
--- For example, you might have five journeyman lockpicks:
--- 
--- - 3 new ones (25 uses)
--- - 1 with 23 uses
--- - 1 with 18 uses
--- 
--- In this example, all of these lockpicks are represented by a single tes3itemStack object. The `stack.count` is 5. The `#stack.variables` is 2, since there are only 2 used lockpicks, with each having different itemData. The count of new lockpicks is equal to `stack.count - #stack.variables`.
--- 
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3itemStack).
--- @class tes3itemStack
--- @field count integer The total number of items in the stack.
--- @field object tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3item|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|tes3leveledItem *Read-only*. The core game object that the stack represents. Leveled items can only appear in inventories of base actors (tes3container, tes3creature, tes3npc) while corresponding actor instances always have leveled lists resolved.
--- @field variables tes3itemData[]|nil A collection of variables that are associated with the stack's object, or nil if there aren't any.
