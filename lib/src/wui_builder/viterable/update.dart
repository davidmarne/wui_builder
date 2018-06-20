part of viterable;

bool updateIterable(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as VIterable;
  final newVNode = tracker.newVNode as VIterable;
  newVNode.children = resolveChildren(newVNode.children);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode.children.length;
  final oldLength = oldVNode.children.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // for performance reasons, if all children will be removed clear the
  // children as a whole rather than calling updateElementChildren for each one
  if (newLength == 0) {
    newVNode.children.forEach(disposeVNode);
    newVNode.children.clear();
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

void removeIterableNode(VIterable vnode) {
  for (final c in vnode.children) c.ref.remove();
}

void replaceIterableNode(VIterable vnode, Node newNode) {
  var first = true;
  for (final c in vnode.children) {
    if (first) {
      c.ref.replaceWith(newNode);
      first = false;
    } else {
      c.ref.remove();
    }
  }
}
