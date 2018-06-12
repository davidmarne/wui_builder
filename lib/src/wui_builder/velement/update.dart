part of velement;

bool updateElement(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as VElement;
  final newVNode = tracker.newVNode as VElement;

  // if an async tracker was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now. Can be removed if shouldAbort is removed
  if (tracker.node == null) {
    final pendingComponentDidMounts = <ComponentDidMount>[];
    tracker.parent
        .append(createNode(tracker.newVNode, pendingComponentDidMounts));
    for (final cdm in pendingComponentDidMounts) cdm();
    return true;
  }

  // update attributes that have changed
  newVNode.updateElementAttributes(oldVNode, tracker.node as Element);

  // if shouldUpdateSubs is set update subscriptions
  newVNode.updateEventListenersToElement(oldVNode, tracker.node as Element);

  final oldChildren = oldVNode.children;
  newVNode.children = resolveChildren(newVNode.children);
  final newChildren = newVNode.children;

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newChildren.length;
  final oldLength = oldChildren.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // for performance reasons, if all children will be removed clear the
  // children as a whole rather than calling updateElementChildren for each one
  if (newLength == 0) {
    oldChildren.forEach(disposeVNode);
    oldChildren.clear();
    oldVNode.ref.text = ''; // perf
    return true;
  }

  tracker.pushPendingCursor(new IterableCursor(
    tracker.node,
    newVNode,
    oldVNode,
    newLength, // pass lengths for performance so they don't have to be re-accessed
    oldLength,
  ));
  return updateChildren(tracker);
}

void disposeVElement(VElement vnode) {
  vnode.dispose();
  vnode.children.forEach(disposeVNode);
}
