# mwseMCMFilterPageElements
<div class="search_terms" style="display: none">mwsemcmfilterpageelements</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

This dictionary-style table holds all of the UI elements that comprise a mwseMCMFilterPage.

This type inherits the following: [mwseMCMSideBarPageElements](../types/mwseMCMSideBarPageElements.md), [mwseMCMCategoryElements](../types/mwseMCMCategoryElements.md), [mwseMCMComponentElements](../types/mwseMCMComponentElements.md)
## Properties

### `description`
<div class="search_terms" style="display: none">description</div>

A label UI element with the Filter Page's description as text.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md))

***

### `innerContainer`
<div class="search_terms" style="display: none">innercontainer</div>

The innerContainer adds `self.indent` additional padding on the left if the component has a label.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md), nil)

***

### `label`
<div class="search_terms" style="display: none">label</div>

Holds component's label UI element. Not all component types have a label.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md), nil)

***

### `labelBlock`
<div class="search_terms" style="display: none">labelblock</div>

Holds a block UI element, inside which label is found.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md), nil)

***

### `mouseOver`
<div class="search_terms" style="display: none">mouseover</div>

This page is the right column of the Sidebar Page. It shows the Infos/Settings added to it in the default view. While the mouse if hovering over a component on the left column of the Sidebar Page, this page shows the description of the hovered component instead.

**Returns**:

* `result` ([mwseMCMMouseOverInfo](../types/mwseMCMMouseOverInfo.md))

***

### `outerContainer`
<div class="search_terms" style="display: none">outercontainer</div>

The top UI element for this component. All the other UI elements that comprise a component are children of this element.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md), nil)

***

### `scrollPane`
<div class="search_terms" style="display: none">scrollpane</div>

The scroll pane UI element inside which subcomponentsContainer is found. The main scroll pane for Filter Page.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md))

***

### `searchBarInput`
<div class="search_terms" style="display: none">searchbarinput</div>

A text input UI element at the top of the Filter Page that works as a search bar.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md))

***

### `sideToSideBlock`
<div class="search_terms" style="display: none">sidetosideblock</div>

The sideToSideBlock is the parent UI element for the left and right columns of the Sidebar Page.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md))

***

### `subcomponentsContainer`
<div class="search_terms" style="display: none">subcomponentscontainer</div>

This is the parent UI element for all the UI elements of MCM components that are in this Category.

**Returns**:

* `result` ([tes3uiElement](../types/tes3uiElement.md))
