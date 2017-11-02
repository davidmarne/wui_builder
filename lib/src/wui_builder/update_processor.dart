part of wui_builder;

void _update(_UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.isPaused) return;

  if (tracker.cursor.oldVNode == null) {
    tracker.cursor.parent.append(_createNode(tracker.cursor.newVNode));
  } else if (tracker.cursor.newVNode == null) {
    // if the new vnode is null dispose of it and remove it from the dom
    _disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node.remove();
  } else if (tracker.cursor.newVNode.vNodeType !=
      tracker.cursor.oldVNode.vNodeType) {
    // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
    _disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node = _createNode(tracker.cursor.newVNode);
  } else if (tracker.cursor.newVNode.vNodeType == VNodeTypes.Element) {
    _updateElement(tracker);
  } else {
    _updateComponent(tracker);
  }
}

_updateElement(_UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as VElement;
  final newVNode = tracker.cursor.newVNode as VElement;
  // if an async tracker was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now.
  if (tracker.cursor.node == null) {
    tracker.cursor.parent.append(_createNode(tracker.cursor.newVNode));
    return;
  }

  // update attributes that have changed
  newVNode._updateElementAttributes(oldVNode, tracker.cursor.node);

  // if shouldUpdateSubs is set update subscriptions
  if (newVNode._shouldUpdateSubs)
    newVNode._updateEventListenersToElement(oldVNode, tracker.cursor.node);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode._childrenSet ? newVNode._children.length : 0;
  final oldLength = oldVNode._childrenSet ? oldVNode._children.length : 0;

  // no cursor
  if (oldLength == 0 && newLength == 0) return;

  // no resumable cursor
  if (oldLength < 2 && newLength < 2) {
    final newChildVNode =
        newLength > 0 ? newVNode._children.elementAt(0) : null;

    tracker.moveCursor(
      tracker.cursor.node,
      tracker.cursor.node.children.length > 0
          ? tracker.cursor.node.children.first
          : null,
      newChildVNode,
      oldLength > 0 ? oldVNode._children.elementAt(0) : null,
    );

    // update parent/child relationship
    newChildVNode?.parent = tracker.cursor.newVNode;

    _update(tracker);
    return;
  }

  tracker.pushPendingCursor(new _IterableCursor(
    tracker.cursor.parent,
    tracker.cursor.node,
    tracker.cursor.newVNode,
    tracker.cursor.oldVNode,
  ));
  _updateElementChildren(tracker);
}

_updateElementChildren(_UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as _IterableCursor;
  final oldVNode = cursor.oldVNode as VElement;
  final newVNode = cursor.newVNode as VElement;

  while (cursor.index < cursor.newLength || cursor.index < cursor.oldLength) {
    final newChildVNode = cursor.index < cursor.newLength
        ? newVNode._children.elementAt(cursor.index)
        : null;
    tracker.moveCursor(
      cursor.node,
      cursor.currentChild,
      newChildVNode,
      cursor.index < cursor.oldLength
          ? oldVNode._children.elementAt(cursor.index)
          : null,
    );

    cursor.next();

    // update parent/child relationship
    newChildVNode?.parent = cursor.newVNode;

    _update(tracker);

    if (tracker.isPaused) return;
  }

  tracker.popPendingCursor();
}

_updateComponent(_UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as Component;
  final newVNode = tracker.cursor.newVNode as Component;
  final oldResult = oldVNode._renderResult;
  final prevProps = oldVNode._props;
  final nextProps = newVNode.props;
  final prevState = oldVNode._state;

  // update the state to what it would have been if the pending update did process
  final nextState = oldVNode._pendingStateSetter != null
      ? oldVNode._pendingStateSetter(nextProps, prevState)
      : prevState;

  // an update has been called since this render cycle was invoked
  //
  // in the case that this is the pendingFiber do not null cancel the update
  if (oldVNode._pendingUpdateTracker != null &&
      oldVNode._pendingUpdateTracker != tracker)
    oldVNode._pendingUpdateTracker.cancel();

  // lifecycle - shouldComponentUpdate
  if (!newVNode.shouldComponentUpdate(
      prevProps, nextProps, prevState, nextState)) return;

  // lifecycle - componentWillUpdate
  newVNode.componentWillUpdate(prevProps, nextProps, prevState, nextState);

  // build the new virtual tree
  newVNode._render(nextProps, nextState);

  // update parent child relationship
  newVNode._renderResult.parent = newVNode;

  // set the state of the new node to next state
  newVNode._state = nextState;

  // move the update position to the next node
  tracker.moveCursor(
    tracker.cursor.parent,
    tracker.cursor.node,
    newVNode._renderResult,
    oldResult,
  );

  _update(tracker);

  // push an update to run lifecycle events and null the _pendingUpdateTracker
  tracker.pushPendingCursor(new _ComponentUpdateCursor(
    tracker.cursor.parent,
    tracker.cursor.node,
    oldVNode,
    newVNode,
    prevProps,
    nextProps,
    prevState,
    nextState,
  ));

  if (!tracker.isPaused) _finishComponentUpdate(tracker);
}

void _finishComponentUpdate(_UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as _ComponentUpdateCursor;
  final newVNode = cursor.newVNode as Component;
  final oldVNode = cursor.oldVNode as Component;

  // lifecycle - componentDidUpdate
  newVNode.componentDidUpdate(
      cursor.prevProps, cursor.nextProps, cursor.prevState, cursor.nextState);

  // if this was the pending update null it out
  // remove the pending state setter
  // and update the parent ref
  if (newVNode._pendingUpdateTracker == tracker) {
    oldVNode._pendingStateSetter = null;
    newVNode._pendingUpdateTracker = null;
    final parent = oldVNode.parent;
    if (parent.vNodeType == VNodeTypes.Component) {
      (parent as Component)._renderResult = newVNode;
    } else {
      final enode = (parent as VElement);
      enode.children[enode.children.indexOf(oldVNode)] = newVNode;
    }
  }

  // we done homie
  tracker.popPendingCursor();
}

// calls the necessary methods to clean up a vnode
void _disposeVNode(VNode node) {
  if (node.vNodeType == VNodeTypes.Component) {
    final cnode = (node as Component);
    cnode.componentWillUnmount(cnode._props, cnode._state);
  } else {
    (node as VElement).dispose();
  }
}
