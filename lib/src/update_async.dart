part of wui_builder;

class Deadline {
  IdleDeadline _idleDeadline;
  int _initialWorkId;
  int _pendingWorkId;
  bool _isCancelled = false;

  Deadline(this._initialWorkId) : _pendingWorkId = _initialWorkId;

  double get timeRemaining => _idleDeadline.timeRemaining();

  bool get isCancelled => _isCancelled;

  int get initialWorkId => _initialWorkId;

  bool get hasNotStarted => _idleDeadline == null;

  void cancel() {
    _isCancelled = true;
    window.cancelIdleCallback(_pendingWorkId);
  }

  void refresh(IdleDeadline idleDeadline, {int pendingWorkId}) {
    _idleDeadline = idleDeadline;
    if (pendingWorkId != null) _pendingWorkId = pendingWorkId;
  }
}

Future<Deadline> _updateNodeAsync(Deadline deadline, Element parent,
    VNode newVNode, VNode oldVNode, int index) async {
  // if the deadline has been cancelled bail
  if (deadline.isCancelled) return deadline;

  // if the deadline is hit request another idle period
  if (deadline.timeRemaining < 1) {
    final nextIdlePeriod = new Completer<IdleDeadline>();
    final pendingWorkId = window.requestIdleCallback(nextIdlePeriod.complete);
    final idleDeadline = await nextIdlePeriod.future;
    // if the deadline has been cancelled return
    if (deadline.isCancelled) return deadline;
    // update the idleDeadline
    deadline.refresh(idleDeadline, pendingWorkId: pendingWorkId);
  }

  if (oldVNode == null) {
    parent.append(_createNode(newVNode));
  } else if (newVNode == null) {
    if (oldVNode is Component)
      oldVNode.componentWillUnmount(oldVNode._props, oldVNode._state);
    else
      (oldVNode as VElement).dispose();
    parent.childNodes[index]?.remove();
  } else if (newVNode.runtimeType != oldVNode.runtimeType) {
    if (oldVNode is Component)
      oldVNode.componentWillUnmount(oldVNode._props, oldVNode._state);
    else
      (oldVNode as VElement).dispose();
    parent.childNodes[index] = _createNode(newVNode);
  } else if (newVNode is VElement) {
    deadline = await _updateElementNodeAsync(
        deadline, parent, newVNode, oldVNode, index);
  } else if (newVNode is Component) {
    deadline = await _updateComponentNodeAsync(
        deadline, parent, newVNode, oldVNode, index);
  }

  return deadline;
}

Future<Deadline> _updateElementNodeAsync(Deadline deadline, Element parent,
    VElement newVNode, VElement oldVNode, int index) async {
  // if an async update was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now.
  if (parent.children.length <= index) {
    parent.append(_createNode(newVNode));
    return deadline;
  }

  final node = parent.children[index];
  newVNode._applyAttributesToElement(node);
  if (newVNode.shouldUpdateSubs)
    newVNode._updateEventListenersToElement(oldVNode, node);
  final newLength = newVNode._children != null ? newVNode._children.length : 0;
  final oldLength = oldVNode._children != null ? oldVNode._children.length : 0;
  for (var i = 0; i < newLength || i < oldLength; i++) {
    deadline = await _updateNodeAsync(
      deadline,
      node,
      i < newVNode._children.length ? newVNode._children.elementAt(i) : null,
      i < oldVNode._children.length ? oldVNode._children.elementAt(i) : null,
      i,
    );

    // quit updating children if the deadline was cancelled
    if (deadline.isCancelled) return deadline;
  }
  return deadline;
}

Future<Deadline> _updateComponentNodeAsync(Deadline deadline, Element parent,
    Component newVNode, Component oldVNode, int index) async {
  var nextState = oldVNode._state;

  // an update has been called since this render cycle was invoked
  if (oldVNode._pendingDeadline != null) {
    // update the state to what it would have been if the update did process
    if (oldVNode._pendingStateSetter != null) {
      nextState = oldVNode._pendingStateSetter(oldVNode._props, nextState);
      oldVNode._pendingStateSetter = null;
    }

    // cancel the pending update to the component now, since we are updating
    // it during this update cycle
    oldVNode._pendingDeadline.cancel();

    // if the pending deadline hasn't started doing work null it out
    // otherwise let it finish its call stack and null itself out
    if (oldVNode._pendingDeadline.hasNotStarted)
      oldVNode._pendingDeadline = null;
  }

  // set the state of the new node to next state
  newVNode._state = nextState;

  if (!newVNode.shouldComponentUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state))
    return deadline;
  newVNode.componentWillUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state);

  newVNode._render(newVNode._props, newVNode._state);
  deadline = await _updateNodeAsync(
    deadline,
    parent,
    newVNode._renderResult,
    oldVNode._renderResult,
    index,
  );
  newVNode.componentDidUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state);
  return deadline;
}
