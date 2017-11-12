part of component;

bool updateComponent(UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as Component;
  final newVNode = tracker.cursor.newVNode as Component;
  final oldResult = oldVNode._renderResult;
  final dynamic prevProps = oldVNode._props;
  final dynamic nextProps = newVNode.props;
  final dynamic prevState = oldVNode._state;
  oldVNode._props = newVNode._props;

  // if there is a pending update for the Component cancel it
  if (oldVNode._pendingUpdateTracker != null &&
      oldVNode._pendingUpdateTracker != tracker) {
    oldVNode._pendingUpdateTracker.cancel();
    oldVNode._pendingUpdateTracker = null;
  }

  // update the state to what it would have been if the pending update did process
  dynamic nextState = prevState;
  if (oldVNode._pendingStateSetter != null) {
    nextState = oldVNode._pendingStateSetter(nextProps, prevState);
    oldVNode._pendingStateSetter = null;
  }

  // lifecycle - shouldComponentUpdate
  if (!oldVNode.shouldComponentUpdate(nextProps, nextState)) return true;

  // lifecycle - componentWillUpdate
  oldVNode.componentWillUpdate(nextProps, nextState);

  // set the state of the new node to next state
  oldVNode._state = nextState;

  // build the new virtual tree
  final newResult = oldVNode.render();

  // update parent child relationship
  // newVNode._renderResult.parent = newVNode;

  // move the update position to the next node
  tracker.moveCursor(
      tracker.cursor.parent, tracker.cursor.node, newResult, oldResult);

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
  final oldVNode = cursor.oldVNode as Component;

  // lifecycle - componentDidUpdate
  oldVNode.componentDidUpdate(cursor.prevProps, cursor.prevState);

  // if this was the pending update null it out
  // remove the pending state setter
  if (oldVNode._pendingUpdateTracker == tracker) {
    oldVNode._pendingUpdateTracker = null;
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
