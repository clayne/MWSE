# removedEquipmentBodyParts
<div class="search_terms" style="display: none">removedequipmentbodyparts</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

This event is called prior to removing all body part nodes for worn equipment.

```lua
--- @param e removedEquipmentBodyPartsEventData
local function removedEquipmentBodyPartsCallback(e)
end
event.register(tes3.event.removedEquipmentBodyParts, removedEquipmentBodyPartsCallback)
```

!!! tip
	This event can be filtered based on the **`reference`** event data.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `reference` ([tes3reference](../types/tes3reference.md)): *Read-only*. Whose body parts are being rebuilt.

