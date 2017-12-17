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
  newVNode.updateElementAttributes(oldVNode, tracker.node);

  // if shouldUpdateSubs is set update subscriptions
  if (newVNode.shouldUpdateSubs)
    newVNode.updateEventListenersToElement(oldVNode, tracker.node);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode.children.length;
  final oldLength = oldVNode.children.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // no resumable cursor
  // if (oldLength < 2 && newLength < 2) {
  //   final newChildVNode = newLength > 0 ? newVNode.children.elementAt(0) : null;
  //   final oldChildVNode = oldLength > 0 ? oldVNode.children.elementAt(0) : null;

  //   final nextTracker = tracker.nextCursor(
  //     tracker.node,
  //     tracker.node.children.isNotEmpty ? tracker.node.children.first : null,
  //     newChildVNode,
  //     oldChildVNode,
  //   );

  //   // update parent/child relationship
  //   if (oldChildVNode == null) {
  //     oldVNode.children.add(newChildVNode);
  //   } else if (oldChildVNode.runtimeType != newChildVNode.runtimeType ||
  //       oldChildVNode.key != newChildVNode.key) {
  //     oldVNode.children[0] = newChildVNode;
  //   }

  //   return updateVNode(nextTracker);
  // }

  tracker.pushPendingCursor(new IterableCursor(
    tracker.node,
    newVNode,
    oldVNode,
  ));
  return updateElementChildren(tracker);
}

bool updateElementChildren(UpdateTracker tracker) {
  final cursor = tracker.pendingWork as IterableCursor;
  final oldVNode = cursor.oldVNode;
  final newVNode = cursor.newVNode;
  while (cursor.index < cursor.newLength || cursor.index < cursor.oldLength) {
    final newChildVNode = cursor.index < cursor.newLength
        ? newVNode.children.elementAt(cursor.index)
        : null;
    final oldChildVNode = cursor.index < cursor.oldLength
        ? oldVNode.children.elementAt(cursor.index)
        : null;

    final nextTracker = tracker.nextCursor(
      cursor.node,
      cursor.currentChild,
      newChildVNode,
      oldChildVNode,
    );

    // update parent/child relationship
    if (oldChildVNode == null) {
      oldVNode.children.add(newChildVNode);
    } else if (oldChildVNode.runtimeType != newChildVNode?.runtimeType ||
        oldChildVNode.key != newChildVNode.key) {
      oldVNode.children[cursor.index] = newChildVNode;
    }

    cursor.next();

    final finshed = updateVNode(nextTracker);

    if (!finshed) return false;
  }

  for (var i = oldVNode.children.length - 1;
      oldVNode.children.isNotEmpty && oldVNode.children[i] == null;
      i--) oldVNode.children.removeLast();

  tracker.popPendingCursor();
  return true;
}

void disposeVElement(VElement vnode) {
  vnode.dispose();
  vnode.children.forEach(disposeVNode);
}
