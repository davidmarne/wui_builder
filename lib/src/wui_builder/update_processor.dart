part of wui_builder;

void _update(_UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.isPaused) return;

  if (tracker.oldVNode == null) {
    tracker.parent.append(_createNode(tracker.newVNode));
  } else if (tracker.newVNode == null) {
    // if the new vnode is null dispose of it and remove it from the dom
    _disposeVNode(tracker.oldVNode);
    tracker.node.remove();
  } else if (tracker.newVNode.runtimeType != tracker.oldVNode.runtimeType) {
    // if the new vnode is a different type, dispose the old and replace it with a new one
    _disposeVNode(tracker.oldVNode);
    tracker.node = _createNode(tracker.newVNode);
  } else if (tracker.newVNode is VElement) {
    _updateElement(tracker);
  } else if (tracker.newVNode is Component) {
    _updateComponent(tracker);
  }
}

_updateElement(_UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as VElement;
  final newVNode = tracker.newVNode as VElement;
  // if an async tracker was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now.
  // if (tracker.node == null) {
  //   tracker.parent.append(_createNode(tracker.newVNode));
  //   return;
  // }

  // update attributes that have changed
  newVNode._updateElementAttributes(oldVNode, tracker.node);

  // if shouldUpdateSubs is set update subscriptions
  if (newVNode.shouldUpdateSubs)
    newVNode._updateEventListenersToElement(oldVNode, tracker.node);

  // only push work to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode._childrenSet ? newVNode._children.length : 0;
  final oldLength = oldVNode._childrenSet ? oldVNode._children.length : 0;

  // no work
  if (oldLength == 0 && newLength == 0) return;

  // no resumable work
  if (oldLength < 2 && newLength < 2) {
    tracker.updateLocation(
      tracker.node,
      tracker.node.children.length > 0 ? tracker.node.children.first : null,
      newLength > 0
          ? newVNode._children.elementAt(0)
          : null,
      oldLength > 0
          ? oldVNode._children.elementAt(0)
          : null,
    );
    _update(tracker);
    return;
  }

  tracker.pushChildrenUpdate(tracker.node, newVNode, oldVNode);
  _updateElementChildren(tracker);
}

_updateElementChildren(_UpdateTracker tracker) {
  final work = tracker.pendingWork.last as _ChildrenUpdate;
  while (work.index < work.newLength || work.index < work.oldLength) {
    tracker.updateLocation(
      work.parent,
      work.currentChild,
      work.index < work.newLength
          ? work.newVNode._children.elementAt(work.index)
          : null,
      work.index < work.oldLength
          ? work.oldVNode._children.elementAt(work.index)
          : null,
    );

    work.moveChildrenIterator();
    _update(tracker);
    if (tracker.isPaused) return;
  }
  tracker.popPendingWork();
}

_updateComponent(_UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as Component;
  final newVNode = tracker.newVNode as Component;

  // cache old result & state in the case that oldVNode == newVNode
  final prevState = oldVNode._state;
  final prevProps = oldVNode._props;
  final oldResult = oldVNode._renderResult;

  // initialize nextState to pe the previous state
  var nextState = prevState;

  // update the state to what it would have been if the pending update did process
  if (oldVNode._pendingStateSetter != null) {
    nextState = oldVNode._pendingStateSetter(oldVNode._props, nextState);
    oldVNode._pendingStateSetter = null;
  }

  // an update has been called since this render cycle was invoked
  //
  // in the case that this is the pendingFiber do not null cancel the update
  if (oldVNode._pendingUpdateTracker != null &&
      oldVNode._pendingUpdateTracker != tracker) {
    oldVNode._pendingUpdateTracker.cancel();
    oldVNode._pendingUpdateTracker = null;
  }

  // set the state of the new node to next state
  newVNode._state = nextState;

  // lifecycle - shouldComponentUpdate
  if (!newVNode.shouldComponentUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state))
    return;

  // lifecycle - componentWillUpdate
  newVNode.componentWillUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state);

  // build the new virtual tree
  newVNode._render(newVNode._props, newVNode._state);

  // move the update position to the next result
  tracker.updateLocation(
      tracker.parent, tracker.node, newVNode._renderResult, oldResult);

  // push an update to run lifecycle events and null the _pendingUpdateTracker
  tracker.pushComponentUpdate(newVNode, prevProps, prevState);

  _update(tracker);

  if (!tracker.isPaused) _finishComponentUpdate(tracker);
}

void _finishComponentUpdate(_UpdateTracker tracker) {
  final work = tracker.pendingWork.last as _ComponentUpdate;

  // lifecycle - componentDidUpdate
  work.newVNode.componentDidUpdate(work.prevProps, work.newVNode._props,
      work.prevState, work.newVNode._state);

  // if this was the pending update null it out
  if (work.newVNode._pendingUpdateTracker == tracker)
    work.newVNode._pendingUpdateTracker = null;

  tracker.popPendingWork();
}

// calls the necessary methods to clean up a vnode
void _disposeVNode(VNode node) {
  if (node is Component)
    node.componentWillUnmount(node._props, node._state);
  else
    (node as VElement).dispose();
}
