import 'dart:html';

import 'cursors.dart';
import 'update_queue.dart';
import 'vnode.dart';

// a UpdateTracker contains state relating to where in the
// reconciliation process we are for a given update. It tracks
// what work still needs to be done for a given update
// in a way that allows reconciliation to be paused and resumed.
class UpdateTracker {
  UpdateTracker parentTracker;
  UpdateTracker childTracker;
  PendingCursor pendingWork;

  final Element parent;
  final Element node;
  final VNode newVNode;
  final VNode oldVNode;
  final bool shouldAbort;

  bool isAsync;
  bool isCancelled = false;
  bool hasStarted = false;
  IdleDeadline deadline;

  UpdateTracker.sync(this.node, this.newVNode)
      : isAsync = false,
        shouldAbort = false,
        parent = node.parent,
        oldVNode = newVNode;

  UpdateTracker.async(this.node, this.newVNode, this.shouldAbort)
      : isAsync = true,
        parent = node.parent,
        oldVNode = newVNode;

  UpdateTracker.clone(this.parent, this.node, this.newVNode, this.oldVNode,
      this.isAsync, this.shouldAbort, this.parentTracker, this.deadline)
      : hasStarted = true;

  // update changes the current location of the update
  // to avoid accesive garbage, mutate the current cursor
  UpdateTracker nextCursor(Element nextParent, Element nextNode,
      VNode nextNewVNode, VNode nextOldVNode) {
    final nextChild = new UpdateTracker.clone(nextParent, nextNode,
        nextNewVNode, nextOldVNode, isAsync, shouldAbort, this, deadline);
    childTracker = nextChild;
    return nextChild;
  }

  bool get shouldPause {
    if (!isAsync) return false;
    final deadlineHit = deadline.timeRemaining() < 1;
    if (deadlineHit) queueProcessingIdleUpdate(this);
    return deadlineHit;
  }

  void cancel() {
    isCancelled = true;
    childTracker?.cancel();
  }

  void refresh(IdleDeadline d) {
    deadline = d;
    parentTracker?.refresh(d);
  }

  void pushPendingCursor(PendingCursor cursor) {
    pendingWork = cursor;
  }

  void popPendingCursor() {
    pendingWork = null;
  }
}
