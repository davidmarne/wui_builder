part of component;

bool updateComponent(UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as Component;
  final newVNode = tracker.cursor.newVNode as Component;
  final oldResult = oldVNode._renderResult;
  final dynamic prevProps = oldVNode._props;
  final dynamic nextProps = newVNode.props;
  final dynamic prevState = oldVNode._state;
  newVNode._state = oldVNode._state;

  // if there is a pending update for the Component cancel it
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

  final finished = updateVNode(tracker);

  // push an update to run lifecycle events and null the _pendingUpdateTracker
  tracker.pushPendingCursor(new ComponentUpdateCursor(
      tracker.cursor.parent,
      tracker.cursor.node,
      oldVNode,
      newVNode,
      prevProps,
      nextProps,
      prevState,
      nextState));

  if (finished) finishComponentUpdate(tracker);
  return finished;
}

void finishComponentUpdate(UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as ComponentUpdateCursor;
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
void disposeComponent(Component node) {
  node.componentWillUnmount();
}

// called to revert a state change when a pending
// update is cancelled
void revertState(Component updatingComponent, dynamic state) {
  updatingComponent._state = state;
}
