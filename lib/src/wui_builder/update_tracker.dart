import 'dart:html';

import 'component.dart';
import 'cursors.dart';
import 'vnode.dart';
import 'update_queue.dart';

// a UpdateTracker contains state relating to where in the
// reconciliation process we are for a given update. It tracks
// what work still needs to be done for a given update
// in a way that allows reconciliation to be paused and resumed.
class UpdateTracker {
  // current location in the update
  Cursor cursor;
  final bool isAsync;
  bool isCancelled = false;
  List<PendingCursor> pendingCursors = new List<PendingCursor>();
  IdleDeadline deadline;

  // used to reset state if update is cancelled
  final dynamic prevState;
  final Component updatingComponent;

  UpdateTracker.sync(Element node, Component newVNode, this.prevState)
      : cursor = new Cursor(
          node.parent,
          node,
          newVNode,
          newVNode,
        ),
        isAsync = false,
        updatingComponent = newVNode;

  UpdateTracker.async(Element node, Component newVNode, this.prevState)
      : cursor = new Cursor(
          node.parent,
          node,
          newVNode,
          newVNode,
        ),
        isAsync = true,
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
    if (_isPaused) queueProcessingUpdate(this);
    return _isPaused;
  }

  void cancel() {
    // revert the state change.
    revertState(updatingComponent, prevState);
    isCancelled = true;
  }

  void refresh(IdleDeadline d) {
    deadline = d;
    _isPaused = false;
  }

  void pushPendingCursor(PendingCursor cursor) {
    pendingCursors.add(cursor);
  }

  void popPendingCursor() {
    pendingCursors.removeLast();
  }
}
