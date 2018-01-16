part of component;

bool updateComponent(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as Component;
  final newVNode = tracker.newVNode as Component;
  final oldResult = oldVNode.child;
  final dynamic prevProps = oldVNode._props;
  final dynamic nextProps = newVNode._props;
  final dynamic prevState = oldVNode._state;
  final bool initiatedByParent = tracker.parentTracker != null;

  // cancel any other pending updates if:
  // 1. This tracker is synchronous, in which case the most recent state will be rendered completely
  // 2. The pending tracker's shouldAbort property is true
  // 3. The pending update has not even started yet
  UpdateTracker currentUpdateTracker;
  for (var i = 0; i < oldVNode._pendingUpdateTrackers.length;) {
    currentUpdateTracker = oldVNode._pendingUpdateTrackers[i];
    if (currentUpdateTracker != tracker &&
        (!currentUpdateTracker.hasStarted ||
            !tracker.isAsync ||
            currentUpdateTracker.shouldAbort)) {
      currentUpdateTracker.cancel();
      oldVNode._pendingUpdateTrackers.removeAt(i);
      continue;
    }

    ++i;
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

  // lifecycle - only call componentWillReceiveProps if this update
  // was initiated by a parent component calling update. If update
  // was called by this component, it is not receiving new props.
  if (initiatedByParent) {
    oldVNode.componentWillReceiveProps(nextProps, nextState);
  }

  // lifecycle - shouldComponentUpdate
  if (!oldVNode.shouldComponentUpdate(nextProps, nextState)) return true;

  // lifecycle - componentWillUpdate
  oldVNode.componentWillUpdate(nextProps, nextState);

  // set the state of the new node to next state
  oldVNode._state = nextState;
  oldVNode._props = nextProps;

  // build the new virtual tree
  final newResult = oldVNode.render();

  // create a new tracker for the child update
  final nextTracker =
      tracker.nextCursor(tracker.parent, tracker.node, newResult, oldResult);

  // run the child tracker
  final finished = updateVNode(nextTracker);

  // if the render result type has changed, replace child
  if (oldVNode.child.runtimeType != newResult.runtimeType ||
      oldVNode.child.key != newResult.key) oldVNode._child = newResult;

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
  // lifecycle - componentWillUnmount
  node.componentWillUnmount();

  // cancel any queued updates
  for (final tracker in node._pendingUpdateTrackers) tracker.cancel();

  // deregister the beforeAnimationFrameCallback if it is set
  if (node.beforeAnimationFrame != null) {
    beforeAnimationFrameCallbacks.remove(node.hashCode);
  }

  // dispose of its children
  disposeVNode(node.child);
}
