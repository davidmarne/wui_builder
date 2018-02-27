part of viterable;

bool updateIterable(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as VIterable;
  final newVNode = tracker.newVNode as VIterable;

  final oldChildren = resolveChildren(oldVNode.children);
  final newChildren = resolveChildren(newVNode.children);

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

void disposeVIterable(VIterable vnode) {
  vnode.children.forEach(disposeVNode);
}
