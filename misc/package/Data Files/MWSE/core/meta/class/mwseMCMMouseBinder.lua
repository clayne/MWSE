--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- This button allows the player to bind a key combination for use with hotkeys. It only allow binding of mouse actions and additional modifier keys: Shift, Alt and Ctrl.
--- 
--- When the player presses the button with current hotkey, a prompt asks them to press a new key (or key combination using Shift, Ctrl or Alt) to bind. The key combination is stored as [mwseKeyMouseCombo](../types/mwseKeyMouseCombo.md).
--- @class mwseMCMMouseBinder : mwseMCMBinder, mwseMCMButton, mwseMCMSetting, mwseMCMComponent
--- @field allowButtons boolean If true, the MouseBinder will let the user bind mouse buttons. By default, it's set to true.
--- @field allowWheel boolean If true, the MouseBinder will let the user bind mouse wheel scroll up or down.
mwseMCMMouseBinder = {}

--- Creates a new MouseBinder.
--- @param data? mwseMCMMouseBinder.new.data This table accepts the following values:
--- 
--- `label?`: string — *Optional*. Text shown next to the button.
--- 
--- `description?`: string — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `allowCombinations ?`: boolean — *Default*: `true`. If true, the MouseBinder will let the user use modification keys: Shift, Ctrl, and Alt when rebinding.
--- 
--- `allowButtons ?`: boolean — *Default*: `true`. If true, the MouseBinder will let the user bind mouse buttons.
--- 
--- `allowWheel ?`: boolean — *Default*: `false`. If true, the MouseBinder will let the user bind mouse wheel scroll up or down.
--- 
--- `keybindName?`: string — *Optional*. The keybind name. Shown in the popup menu header. This string is formatted into a localized version of "SET %s KEYBIND.". If none is provided the popup has "SET NEW KEYBIND." as header text.
--- 
--- `leftSide?`: boolean — *Default*: `true`. If true, the button will be created on the left and label on the right.
--- 
--- `variable?`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable — *Optional*. A variable for this MouseBinder.
--- 
--- `defaultSetting?`: mwseKeyMouseCombo — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- 
--- `callback?`: fun(self: mwseMCMMouseBinder) — *Optional*. The custom function called when the player interacts with this MouseBinder.
--- 
--- `inGameOnly?`: boolean — *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- 
--- `restartRequired?`: boolean — *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- 
--- `restartRequiredMessage?`: string — *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- 
--- `indent?`: integer — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent?`: integer — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom?`: integer — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing?`: integer — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `postCreate?`: fun(self: mwseMCMMouseBinder) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class?`: string — *Optional*. No description yet available.
--- 
--- `componentType?`: string — *Optional*. No description yet available.
--- 
--- `parentComponent?`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMLogLevelOptions|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton — *Optional*. No description yet available.
--- @return mwseMCMMouseBinder button No description yet available.
function mwseMCMMouseBinder:new(data) end

---Table parameter definitions for `mwseMCMMouseBinder.new`.
--- @class mwseMCMMouseBinder.new.data
--- @field label? string *Optional*. Text shown next to the button.
--- @field description? string *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field allowCombinations ? boolean *Default*: `true`. If true, the MouseBinder will let the user use modification keys: Shift, Ctrl, and Alt when rebinding.
--- @field allowButtons ? boolean *Default*: `true`. If true, the MouseBinder will let the user bind mouse buttons.
--- @field allowWheel ? boolean *Default*: `false`. If true, the MouseBinder will let the user bind mouse wheel scroll up or down.
--- @field keybindName? string *Optional*. The keybind name. Shown in the popup menu header. This string is formatted into a localized version of "SET %s KEYBIND.". If none is provided the popup has "SET NEW KEYBIND." as header text.
--- @field leftSide? boolean *Default*: `true`. If true, the button will be created on the left and label on the right.
--- @field variable? mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable *Optional*. A variable for this MouseBinder.
--- @field defaultSetting? mwseKeyMouseCombo *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- @field callback? fun(self: mwseMCMMouseBinder) *Optional*. The custom function called when the player interacts with this MouseBinder.
--- @field inGameOnly? boolean *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired? boolean *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage? string *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent? integer *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent? integer *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom? integer *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing? integer *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate? fun(self: mwseMCMMouseBinder) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class? string *Optional*. No description yet available.
--- @field componentType? string *Optional*. No description yet available.
--- @field parentComponent? mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMLogLevelOptions|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton *Optional*. No description yet available.

