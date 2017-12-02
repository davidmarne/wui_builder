part of component;

bool updateComponent(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as Component;
  final newVNode = tracker.newVNode as Component;
  final oldResult = oldVNode._renderResult;
  final dynamic prevProps = oldVNode._props;
  final dynamic nextProps = newVNode.props;
  final dynamic prevState = oldVNode._state;
  final bool initiatedByParent = tracker.parentTracker != null;
  oldVNode._props = newVNode._props;

  // cancel any other pending updates if:
  // 1. This tracker is synchronous, in which case the most recent state will be rendered completely
  // 2. The pending tracker's shouldAbort property is true
  // 3. The pending update has not even started yet
  UpdateTracker currentUpdateTracker;
  for (var i = 0; i < oldVNode._pendingUpdateTrackers.length;) {
    currentUpdateTracker = oldVNode._pendingUpdateTrackers[i];
    if (currentUpdateTracker != tracker &&
        (!tracker.isAsync ||
            currentUpdateTracker.shouldAbort ||
            !currentUpdateTracker.hasStarted)) {
      currentUpdateTracker.cancel();
      oldVNode._pendingUpdateTrackers.removeAt(i);
      continue;
    }
    i++;
  }

  if (initiatedByParent) {
    // if this update tracker wasn't already set in the
    // _pendingUpdateTrackers, add it so we can cancel it later
    // if a sync update comes through
    oldVNode._pendingUpdateTrackers.add(tracker);
  }

  // update the state to what it would have been if the pending update did process
  dynamic nextState = prevState;
  if (oldVNode._pendingStateSetter != null) {
    nextState = oldVNode._pendingStateSetter(nextProps, prevState);
    oldVNode._pendingStateSetter = null;
  }

  if (initiatedByParent) {
    oldVNode.componentWillReceiveProps(nextProps, nextState);
  }

  // lifecycle - shouldComponentUpdate
  if (!oldVNode.shouldComponentUpdate(nextProps, nextState)) return true;

  // lifecycle - componentWillUpdate
  oldVNode.componentWillUpdate(nextProps, nextState);

  // set the state of the new node to next state
  oldVNode._state = nextState;

  // build the new virtual tree
  final newResult = oldVNode.render();

  // move the update position to the next node
  final nextTracker =
      tracker.nextCursor(tracker.parent, tracker.node, newResult, oldResult);

  final finished = updateVNode(nextTracker);

  // push an update to run lifecycle events and null the _pendingUpdateTracker
  tracker.pushPendingCursor(
      new ComponentUpdateCursor(oldVNode, prevProps, prevState));

  if (finished) finishComponentUpdate(tracker);
  return finished;
}

void finishComponentUpdate(UpdateTracker tracker) {
  final cursor = tracker.pendingWork as ComponentUpdateCursor;

  // lifecycle - componentDidUpdate
  cursor.vNode.componentDidUpdate(cursor.prevProps, cursor.prevState);

  // if this was the pending update null it out
  // remove the pending state setter
  cursor.vNode._pendingUpdateTrackers.remove(tracker);

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
