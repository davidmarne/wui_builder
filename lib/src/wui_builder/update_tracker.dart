part of wui_builder;

// a _UpdateTracker contains state relating to where in the
// reconciliation process we are for a given update. It tracks
// what work still needs to be done for a given update
// in a way that allows reconciliation to be paused and resumed.
class _UpdateTracker {
  // current location in the update
  Element parent;
  Element node;
  VNode newVNode;
  VNode oldVNode;

  // async parts
  final bool isAsync;
  bool hasStarted;
  bool isCancelled = false;
  List<_PendingWork> pendingWork = new List<_PendingWork>();
  IdleDeadline deadline;

  _UpdateTracker.sync(this.node, this.newVNode, this.oldVNode)
      : parent = node.parent,
        isAsync = false,
        hasStarted = true;

  _UpdateTracker.async(this.node, this.newVNode, this.oldVNode)
      : parent = node.parent,
        isAsync = true,
        hasStarted = false;

  // update changes the current location of the update
  void updateLocation(Element nextParent, Element nextNode, VNode nextNewVNode,
      VNode nextOldVNode) {
    parent = nextParent;
    node = nextNode;
    newVNode = nextNewVNode;
    oldVNode = nextOldVNode;
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
    isCancelled = true;
  }

  void refresh(IdleDeadline d) {
    hasStarted = true;
    deadline = d;
    _isPaused = false;
  }

  void pushChildrenUpdate(Element parent, VNode newVNode, VNode oldVNode) {
    pendingWork.add(new _ChildrenUpdate(
      parent,
      parent.children.length > 0 ? parent.children.first : null,
      newVNode,
      oldVNode,
    ));
  }

  void pushComponentUpdate(
      Component newVNode, dynamic prevProps, dynamic prevState) {
    pendingWork.add(new _ComponentUpdate(
      newVNode,
      prevProps,
      prevState,
    ));
  }

  void popPendingWork() {
    pendingWork.removeLast();
  }
}

class _PendingWork {}

class _ChildrenUpdate extends _PendingWork {
  final VElement newVNode;
  final VElement oldVNode;
  final Element parent;

  final int newLength;
  final int oldLength;

  Element currentChild;
  int index = 0;

  _ChildrenUpdate(this.parent, this.currentChild, this.newVNode, this.oldVNode)
      : newLength = newVNode._childrenSet ? newVNode._children.length : 0,
        oldLength = oldVNode._childrenSet ? oldVNode._children.length : 0;

  void moveChildrenIterator() {
    if (currentChild != null) currentChild = currentChild.nextElementSibling;
    index++;
  }
}

class _ComponentUpdate extends _PendingWork {
  final Component newVNode;
  final dynamic prevProps;
  final dynamic prevState;
  _ComponentUpdate(this.newVNode, this.prevProps, this.prevState);
}
