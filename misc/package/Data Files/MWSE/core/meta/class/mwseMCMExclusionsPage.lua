--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- An ExclusionsPage is a highly specialized page used for making whitelists/blacklists. It is made up of two lists: The righthand list displays objects that are filtered using custom settings. It could be a list of NPCs, weapons, plugins, etc. Clicking on an item in the righthand list will transfer it to the lefthand list and add it to the config table. Each list can be searched using a search bar, and buttons can be added for different filters to appear in the lefthand list.
--- @class mwseMCMExclusionsPage : mwseMCMPage, mwseMCMCategory, mwseMCMComponent
--- @field components table Unused in this page type.
--- @field config table|nil The config to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the config stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- @field configKey string|number|nil The `configKey` used to create a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md). If this is provided, along with a `config` (which may be inherited from the `parentComponent`), then a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) variable will be created for this `ExclusionsPage`.
--- @field defaultConfig table|nil The `defaultConfig` to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the `defaultConfig` stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- @field defaultSetting table<string, boolean>|nil If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value. If not provided, then the value in `defaultConfig` will be used, if possible.
--- @field description string|nil Displayed at the top of the page above the lists.
--- @field elements mwseMCMExclusionsPageElements This dictionary-style table holds all the UI elements of the Exclusions Page, for easy access.
--- @field filters mwseMCMExclusionsPageFilter[] A list of filters. Filters control which items will appear in the lists of the Exclusions Page.
--- @field leftListLabel string The label on the left list. The default is a localised version of "Blocked".
--- @field noScroll nil Unused in this page type.
--- @field postCreate nil Unused in this page type.
--- @field rightListLabel string The label on the right list. The default is a localised version of "Allowed".
--- @field showAllBlocked boolean If true, the left list shows all items in the blocked table, regardless of the filter being used.
--- @field toggleText string The text for the button that toggles filtered items from one list to another. The default is a localised version of "Toggle Filtered".
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable The Variable used to store blocked list entries.
mwseMCMExclusionsPage = {}

--- This method sets the state of clicked filter button to `tes3.uiState.active`, and all the other filter buttons to `tes3.uiState.normal`.
--- @param filter tes3uiElement No description yet available.
function mwseMCMExclusionsPage:clickFilter(filter) end

--- If the `description` for this page is set, this method will create a label with the `description` as text and add it to `self.elements.description`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMExclusionsPage:createDescription(parentBlock) end

--- Creates a button for each of the filters as children of `filterList` UI element. If the Cxclusions Page has only one filter, this section won't be visible.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMExclusionsPage:createFiltersSection(parentBlock) end

--- Creates one complete list of the Exclusions Page. That includes the list label, a search bar and its scroll pane.
--- @param parentBlock tes3uiElement No description yet available.
--- @param listId string One of the following: `"leftList"` or `"rightList"`.
function mwseMCMExclusionsPage:createList(parentBlock, listId) end

--- Creates one a search bar on the given list. It consists of thin border UI element stored in `self.elements.searchBar[listName]` and text input UI element stored in `self.elements.searchBarInput[listName]`.
--- @param parentBlock tes3uiElement No description yet available.
--- @param listName string One of the following: `"leftList"` or `"rightList"`.
function mwseMCMExclusionsPage:createSearchBar(parentBlock, listName) end

--- This method creates the `sections` UI element and stores it in `self.elements.sections`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMExclusionsPage:createSections(parentBlock) end

--- This method adds the given items to the left list if they are in the blocked list of the variable.
--- @param items string[] No description yet available.
function mwseMCMExclusionsPage:distributeLeft(items) end

--- This method adds the given items to the right list if they are not in the blocked list of the variable.
--- @param items string[] No description yet available.
function mwseMCMExclusionsPage:distributeRight(items) end

--- Creates a new Exclusions Page.
--- @param data? mwseMCMExclusionsPage.new.data This table accepts the following values:
--- 
--- `showHeader?`: boolean — *Default*: `false`. The page's label will only be created if set to true.
--- 
--- `label`: string — The label field is displayed in the tab for that page at the top of the menu. Defaults to: "Page {number}".
--- 
--- `variable?`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable — *Optional*. The Variable used to store blocked list entries.
--- 
--- `config?`: table — *Default*: ``parentComponent.config``. The config to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the config stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- 
--- `defaultConfig?`: table — *Default*: ``parentComponent.defaultConfig``. The `defaultConfig` to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the `defaultConfig` stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- 
--- `configKey?`: string|number — *Optional*. The `configKey` used to create a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md). If this is provided, along with a `config` (which may be inherited from the `parentComponent`), then a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) variable will be created for this `ExclusionsPage`.
--- 
--- `defaultSetting?`: table<string, boolean> — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value. If not provided, then the value in `defaultConfig` will be used, if possible.
--- 
--- `filters`: mwseMCMExclusionsPageFilter[] — A list of filters. Filters control which items will appear in the lists of the Exclusions Page. At least one filter is required. See the [filter page](./mwseMCMExclusionsPageFilter.md) for description.
--- 
--- `description?`: string — *Optional*. Displayed at the top of the page above the lists.
--- 
--- `toggleText?`: string — *Optional*. The text for the button that toggles filtered items from one list to another. The default is a localised version of "Toggle Filtered".
--- 
--- `leftListLabel ?`: string — *Optional*. The label on the left list. The default is a localised version of "Blocked".
--- 
--- `rightListLabel ?`: string — *Optional*. The label on the right list. The default is a localised version of "Allowed".
--- 
--- `showAllBlocked ?`: boolean — *Default*: `false`. When set to true, the left list shows all items in the blocked table, regardless of the filter being used.
--- 
--- `indent?`: integer — *Default*: `6`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent?`: integer — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom?`: integer — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing?`: integer — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `inGameOnly?`: boolean — *Default*: `false`. No description yet available.
--- 
--- `class?`: string — *Optional*. No description yet available.
--- 
--- `componentType?`: string — *Optional*. No description yet available.
--- 
--- `parentComponent?`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMLogLevelOptions|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton — *Optional*. No description yet available.
--- @return mwseMCMExclusionsPage page No description yet available.
function mwseMCMExclusionsPage:new(data) end

---Table parameter definitions for `mwseMCMExclusionsPage.new`.
--- @class mwseMCMExclusionsPage.new.data
--- @field showHeader? boolean *Default*: `false`. The page's label will only be created if set to true.
--- @field label string The label field is displayed in the tab for that page at the top of the menu. Defaults to: "Page {number}".
--- @field variable? mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable *Optional*. The Variable used to store blocked list entries.
--- @field config? table *Default*: ``parentComponent.config``. The config to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the config stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- @field defaultConfig? table *Default*: ``parentComponent.defaultConfig``. The `defaultConfig` to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `ExclusionsPage`. If provided, it will override the `defaultConfig` stored in `parentComponent`. Otherwise, the value in `parentComponent` will be used.
--- @field configKey? string|number *Optional*. The `configKey` used to create a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md). If this is provided, along with a `config` (which may be inherited from the `parentComponent`), then a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) variable will be created for this `ExclusionsPage`.
--- @field defaultSetting? table<string, boolean> *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value. If not provided, then the value in `defaultConfig` will be used, if possible.
--- @field filters mwseMCMExclusionsPageFilter[] A list of filters. Filters control which items will appear in the lists of the Exclusions Page. At least one filter is required. See the [filter page](./mwseMCMExclusionsPageFilter.md) for description.
--- @field description? string *Optional*. Displayed at the top of the page above the lists.
--- @field toggleText? string *Optional*. The text for the button that toggles filtered items from one list to another. The default is a localised version of "Toggle Filtered".
--- @field leftListLabel ? string *Optional*. The label on the left list. The default is a localised version of "Blocked".
--- @field rightListLabel ? string *Optional*. The label on the right list. The default is a localised version of "Allowed".
--- @field showAllBlocked ? boolean *Default*: `false`. When set to true, the left list shows all items in the blocked table, regardless of the filter being used.
--- @field indent? integer *Default*: `6`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent? integer *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom? integer *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing? integer *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field inGameOnly? boolean *Default*: `false`. No description yet available.
--- @field class? string *Optional*. No description yet available.
--- @field componentType? string *Optional*. No description yet available.
--- @field parentComponent? mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMLogLevelOptions|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton *Optional*. No description yet available.

--- This method clears inputted text from both search bars.
function mwseMCMExclusionsPage:resetSearchBars() end

--- Toggles the `e.source` UI element from one list to the other. Updates the variable value accordingly.
--- @param e tes3uiEventData No description yet available.
function mwseMCMExclusionsPage:toggle(e) end

--- Toggles the filtered items from the given list to the other.
--- @param listName string One of the following: `"leftList"` or `"rightList"`.
function mwseMCMExclusionsPage:toggleFiltered(listName) end

--- Hides the items in given list that don't contain the currently inputted search text.
--- @param listName string One of the following: `"leftList"` or `"rightList"`.
function mwseMCMExclusionsPage:updateSearch(listName) end

