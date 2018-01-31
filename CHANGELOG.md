
## 0.4.1

wui_builder.dart

* fix issue around remove and readding event subscriptions on dom elements

## 0.4.1

components.dart

* Added router component that lets you decalare which components to render for a given route

## 0.4.0

wui_builder.dart

* **Breaking changes**:
  * Changed StyleBuilder from a typedef to an Object
* Keyed children can now be moved amongst their siblings while maintaining their state
* added an exported function, unmount, which disposes a vnode and removes it from the dom.

components.dart

* added NComponent and NCComponent for when you want a component with Null prop and state types.

functional.dart:

* **Breaking changes**:
  * removed element generic from withRef
  * removed added update type to withState hoc

performance audit:

* move to usage of maps for set properties on velements
* move to usage of custom attribute diffing
* use `ele.text = '';` to remove all children from an element
* use node.firstChild rather than node.children.first
* use ++i and --i instead of i++ and i--

bug fixes:

* correctly clean up beforeAnimationFrame callbacks after components are unmounted

## 0.3.1

* Add changelog.
* Move home_page into example and rename to docs.
* fix issue where removing some, but not all, children caused errors
* Added Perf HOC

## 0.3.0

* **Breaking changes**:
  * Made functional library's HOC classes private.
  * componentDidMount is now called after the new element is actually appended to the dom.
* Added docs
* Made child public on the component api.
* Key change now forces a rerender.
* Added a virtual element factory for every tag supported in HTML5.

## 0.2.1

* Added updateOnAnimationFrame to the component api.
* Added setStateOnAnimationFrame to the component api.
* Added beforeAnimationFrame to the component api.

## 0.2.0

* Added should abort option to updateOnIdle.
* Added setState and setStateOnIdle.
* Added component package.