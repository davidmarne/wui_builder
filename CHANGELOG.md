## 0.3.1

* Add changelog.
* Move home_page into example and rename to docs.
* fix issue where removing some, but not all, children caused errors

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