part of wui_builder;

// returns true if the update was complete
bool _update(_UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.isPaused) return false;

  if (tracker.cursor.oldVNode == null) {
    tracker.cursor.parent.append(_createNode(tracker.cursor.newVNode));
  } else if (tracker.cursor.newVNode == null) {
    // if the new vnode is null dispose of it and remove it from the dom
    _disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node?.remove();
  } else if (tracker.cursor.newVNode.vNodeType !=
      tracker.cursor.oldVNode.vNodeType) {
    // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
    _disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node = _createNode(tracker.cursor.newVNode);
  } else if (tracker.cursor.newVNode.vNodeType == VNodeTypes.Element) {
    return _updateElement(tracker);
  } else {
    return _updateComponent(tracker);
  }

  return true;
}

bool _updateElement(_UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as VElement;
  final newVNode = tracker.cursor.newVNode as VElement;
  // if an async tracker was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now.
  if (tracker.cursor.node == null) {
    tracker.cursor.parent.append(_createNode(tracker.cursor.newVNode));
    return true;
  }

  // update attributes that have changed
  newVNode.updateElementAttributes(oldVNode, tracker.cursor.node);

  // if shouldUpdateSubs is set update subscriptions
  if (newVNode.shouldUpdateSubs)
    newVNode.updateEventListenersToElement(oldVNode, tracker.cursor.node);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode.children.length;
  final oldLength = oldVNode.children.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // no resumable cursor
  if (oldLength < 2 && newLength < 2) {
    final newChildVNode = newLength > 0 ? newVNode.children.elementAt(0) : null;

    tracker.moveCursor(
      tracker.cursor.node,
      tracker.cursor.node.children.length > 0
          ? tracker.cursor.node.children.first
          : null,
      newChildVNode,
      oldLength > 0 ? oldVNode.children.elementAt(0) : null,
    );

    // update parent/child relationship
    newChildVNode?.parent = tracker.cursor.newVNode;

    return _update(tracker);
  }

  tracker.pushPendingCursor(new _IterableCursor(
    tracker.cursor.parent,
    tracker.cursor.node,
    newVNode,
    oldVNode,
  ));
  return _updateElementChildren(tracker);
}

bool _updateElementChildren(_UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as _IterableCursor;
  final oldVNode = cursor.oldVNode as VElement;
  final newVNode = cursor.newVNode as VElement;
  while (cursor.index < cursor.newLength || cursor.index < cursor.oldLength) {
    final newChildVNode = cursor.index < cursor.newLength
        ? newVNode.children.elementAt(cursor.index)
        : null;

    tracker.moveCursor(
      cursor.node,
      cursor.currentChild,
      newChildVNode,
      cursor.index < cursor.oldLength
          ? oldVNode.children.elementAt(cursor.index)
          : null,
    );

    cursor.next();

    // update parent/child relationship
    newChildVNode?.parent = cursor.newVNode;

    final finshed = _update(tracker);

    if (!finshed) return false;
  }

  tracker.popPendingCursor();
  return true;
}

bool _updateComponent(_UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as Component;
  final newVNode = tracker.cursor.newVNode as Component;
  final oldResult = oldVNode._renderResult;
  final dynamic prevProps = oldVNode._props;
  final dynamic nextProps = newVNode.props;
  final dynamic prevState = oldVNode._state;
  newVNode._state = oldVNode._state;

  // an update has been called since this render cycle was invoked
  //
  // in the case that this is the pendingFiber do not null cancel the update
  if (oldVNode._pendingUpdateTracker != null &&
      oldVNode._pendingUpdateTracker != tracker)
    oldVNode._pendingUpdateTracker.cancel();

  // update the state to what it would have been if the pending update did process
  final dynamic nextState = oldVNode._pendingStateSetter != null
      ? oldVNode._pendingStateSetter(nextProps, prevState)
      : prevState;

  // lifecycle - shouldComponentUpdate
  if (!newVNode.shouldComponentUpdate(nextProps, nextState)) return true;

  // lifecycle - componentWillUpdate
  newVNode.componentWillUpdate(nextProps, nextState);

  // set the state of the new node to next state
  newVNode._state = nextState;

  // build the new virtual tree
  newVNode._render();

  // update parent child relationship
  newVNode._renderResult.parent = newVNode;

  // move the update position to the next node
  tracker.moveCursor(tracker.cursor.parent, tracker.cursor.node,
      newVNode._renderResult, oldResult);

  final finished = _update(tracker);

  // push an update to run lifecycle events and null the _pendingUpdateTracker
  tracker.pushPendingCursor(new _ComponentUpdateCursor(
      tracker.cursor.parent,
      tracker.cursor.node,
      oldVNode,
      newVNode,
      prevProps,
      nextProps,
      prevState,
      nextState));

  if (finished) _finishComponentUpdate(tracker);
  return finished;
}

void _finishComponentUpdate(_UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as _ComponentUpdateCursor;
  final newVNode = cursor.newVNode as Component;

  // lifecycle - componentDidUpdate
  newVNode.componentDidUpdate(cursor.prevProps, cursor.prevState);

  // if this was the pending update null it out
  // remove the pending state setter
  if (newVNode._pendingUpdateTracker == tracker) {
    newVNode._pendingStateSetter = null;
    newVNode._pendingUpdateTracker = null;
  }

  // we done homie
  tracker.popPendingCursor();
}

// calls the necessary methods to clean up a vnode
void _disposeVNode(VNode node) {
  if (node.vNodeType == VNodeTypes.Component) {
    final cnode = (node as Component);
    cnode.componentWillUnmount();
  } else {
    (node as VElement).dispose();
  }
}
