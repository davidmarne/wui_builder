## 0.5.0

wui_builder.dart

* fix casting issues due to dart 2s new type system (internals only)
  * _setSubs is now dynamic in VElement
  * _pendingStateSetter is now dynamicly typed 
* Added vif parameter to Component, which can be used for easy conditional rendering
* Added VText vNode, which can be used to render text nodes without additional elements being added to the DOM
* Added VIterable vNode, which can be used to return a list of VNodes from a render function. This is experimental and has known issues.

components.dart

* **Breaking changes**:
  * The following classes now take named required/optional parameters in constructor:
    * ContextSetter
    * UpdateBlocker
    * Pure
    * Perf
    * HistoryProvider
    * Router
    * Route
* Added UpdateDebugger, which prints props & state changes in componentWillUpdate

functional.dart

* Added createEventHandler function which can be used to memoize inline functions in functional components
* Added withContext HOC
* Added withHistory HOC

## 0.4.3

* fix bug where ref was not set after component updates caused change in ref

## 0.4.2

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