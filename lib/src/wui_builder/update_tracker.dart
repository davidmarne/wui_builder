part of wui_builder;

// a _UpdateTracker contains state relating to where in the
// reconciliation process we are for a given update. It tracks
// what work still needs to be done for a given update
// in a way that allows reconciliation to be paused and resumed.
class _UpdateTracker {
  // current location in the update
  _Cursor cursor;
  final bool isAsync;
  bool hasStarted;
  bool isCancelled = false;
  List<_PendingCursor> pendingCursors = new List<_PendingCursor>();
  IdleDeadline deadline;

  // used to reset state if update is cancelled
  final dynamic prevState;
  final Component updatingComponent;

  _UpdateTracker.sync(Element node, Component newVNode, this.prevState)
      : cursor = new _Cursor(
          node.parent,
          node,
          newVNode,
          newVNode,
        ),
        isAsync = false,
        hasStarted = true,
        updatingComponent = newVNode;

  _UpdateTracker.async(Element node, Component newVNode, this.prevState)
      : cursor = new _Cursor(
          node.parent,
          node,
          newVNode,
          newVNode,
        ),
        isAsync = true,
        hasStarted = false,
        updatingComponent = newVNode;

  // update changes the current location of the update
  // to avoid accesive garbage, mutate the current cursor
  void moveCursor(
      Element parent, Element node, VNode newVNode, VNode oldVNode) {
    cursor.parent = parent;
    cursor.node = node;
    cursor.newVNode = newVNode;
    cursor.oldVNode = oldVNode;
  }

  bool _isPaused;
  bool get isPaused {
    if (!isAsync) return false;
    if (_isPaused) return _isPaused;
    _isPaused = deadline.timeRemaining() < 1;
    if (_isPaused) _queueProcessingUpdate(this);
    return _isPaused;
  }

  void cancel() {
    // revert the state change.
    updatingComponent._state = prevState;
    isCancelled = true;
  }

  void refresh(IdleDeadline d) {
    hasStarted = true;
    deadline = d;
    _isPaused = false;
  }

  void pushPendingCursor(_PendingCursor cursor) {
    pendingCursors.add(cursor);
  }

  void popPendingCursor() {
    pendingCursors.removeLast();
  }
}
