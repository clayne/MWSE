# tes3startScript
<div class="search_terms" style="display: none">tes3startscript, startscript</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

An object representing a script which autostarts at the game load.

This type inherits the following: [tes3baseObject](../types/tes3baseObject.md).
## Properties

### `blocked`
<div class="search_terms" style="display: none">blocked</div>

The blocked state of the object.

**Returns**:

* `result` (boolean)

***

### `deleted`
<div class="search_terms" style="display: none">deleted</div>

*Read-only*. The deleted state of the object.

**Returns**:

* `result` (boolean)

***

### `disabled`
<div class="search_terms" style="display: none">disabled</div>

*Read-only*. The disabled state of the object.

**Returns**:

* `result` (boolean)

***

### `id`
<div class="search_terms" style="display: none">id</div>

*Read-only*. The unique identifier for the object.

**Returns**:

* `result` (string)

***

### `modified`
<div class="search_terms" style="display: none">modified, ified</div>

The modification state of the object since the last save.

**Returns**:

* `result` (boolean)

***

### `objectFlags`
<div class="search_terms" style="display: none">objectflags</div>

*Read-only*. The raw flags of the object.

**Returns**:

* `result` (number)

***

### `objectType`
<div class="search_terms" style="display: none">objecttype</div>

*Read-only*. The type of object. Maps to values in [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/).

**Returns**:

* `result` ([tes3.objectType](../references/object-types.md))

***

### `persistent`
<div class="search_terms" style="display: none">persistent</div>

The persistent flag of the object.

**Returns**:

* `result` (boolean)

***

### `script`
<div class="search_terms" style="display: none">script</div>

*Read-only*. A script which is set to start at game start with this `tes3startScript` object.

**Returns**:

* `result` ([tes3script](../types/tes3script.md))

***

### `sourceless`
<div class="search_terms" style="display: none">sourceless</div>

The sourceless flag of the object.

**Returns**:

* `result` (boolean)

***

### `sourceMod`
<div class="search_terms" style="display: none">sourcemod</div>

*Read-only*. The filename (including the extension) of the mod that owns this object. It has `nil` value if the object was anything other than loaded from an ESP or ESM file.

**Returns**:

* `result` (string)

***

### `supportsActivate`
<div class="search_terms" style="display: none">supportsactivate</div>

If true, the object supports activation. This includes all the items (excluding non-carriable lights), actors outside combat, activators, containers and doors.

However, the activation of such an object may still be blocked via mwscript or a Lua script.

**Returns**:

* `result` (boolean)

***

### `supportsLuaData`
<div class="search_terms" style="display: none">supportsluadata</div>

If true, references of this object can store temporary or persistent lua data.

**Returns**:

* `result` (boolean)

***

## Methods

### `__tojson`
<div class="search_terms" style="display: none">__tojson</div>

Serializes the object to json.

```lua
local string = myObject:__tojson()
```

**Returns**:

* `string` (string)

