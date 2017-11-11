part of velement;

bool updateElement(UpdateTracker tracker) {
  final oldVNode = tracker.cursor.oldVNode as VElement;
  final newVNode = tracker.cursor.newVNode as VElement;
  // if an async tracker was cancelled causing a virtual dom to not
  // fully be rendered, we create the node now.
  if (tracker.cursor.node == null) {
    tracker.cursor.parent.append(createNode(tracker.cursor.newVNode));
    return true;
  }

  // update attributes that have changed
  newVNode.updateElementAttributes(oldVNode, tracker.cursor.node);

  // if shouldUpdateSubs is set update subscriptions
  if (newVNode.shouldUpdateSubs)
    newVNode.updateEventListenersToElement(oldVNode, tracker.cursor.node);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode.children.length;
  final oldLength = oldVNode.children.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // no resumable cursor
  if (oldLength < 2 && newLength < 2) {
    final newChildVNode = newLength > 0 ? newVNode.children.elementAt(0) : null;

    tracker.moveCursor(
      tracker.cursor.node,
      tracker.cursor.node.children.length > 0
          ? tracker.cursor.node.children.first
          : null,
      newChildVNode,
      oldLength > 0 ? oldVNode.children.elementAt(0) : null,
    );

    // update parent/child relationship
    newChildVNode?.parent = tracker.cursor.newVNode;

    return updateVNode(tracker);
  }

  tracker.pushPendingCursor(new IterableCursor(
    tracker.cursor.parent,
    tracker.cursor.node,
    newVNode,
    oldVNode,
  ));
  return updateElementChildren(tracker);
}

bool updateElementChildren(UpdateTracker tracker) {
  final cursor = tracker.pendingCursors.last as IterableCursor;
  final oldVNode = cursor.oldVNode as VElement;
  final newVNode = cursor.newVNode as VElement;
  while (cursor.index < cursor.newLength || cursor.index < cursor.oldLength) {
    final newChildVNode = cursor.index < cursor.newLength
        ? newVNode.children.elementAt(cursor.index)
        : null;

    tracker.moveCursor(
      cursor.node,
      cursor.currentChild,
      newChildVNode,
      cursor.index < cursor.oldLength
          ? oldVNode.children.elementAt(cursor.index)
          : null,
    );

    cursor.next();

    // update parent/child relationship
    newChildVNode?.parent = cursor.newVNode;

    final finshed = updateVNode(tracker);

    if (!finshed) return false;
  }

  tracker.popPendingCursor();
  return true;
}

void disposeVElement(VElement vnode) {
  vnode.dispose();
}
