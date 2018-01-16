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
  newVNode.updateEventListenersToElement(oldVNode, tracker.node);

  // only push cursor to queue if children > 1 to avoid unneccesary garbage
  final newLength = newVNode.children.length;
  final oldLength = oldVNode.children.length;

  // no cursor
  if (oldLength == 0 && newLength == 0) return true;

  // for performance reasons, if all children will be removed clear the
  // children as a whole rather than calling updateElementChildren for each one
  if (newLength == 0) {
    oldVNode.children.forEach(disposeVNode);
    oldVNode.children.clear();
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
  return updateElementChildren(tracker);
}

bool updateElementChildren(UpdateTracker tracker) {
  final cursor = tracker.pendingWork as IterableCursor;
  final oldVNode = cursor.oldVNode;
  final newVNode = cursor.newVNode;

  // build a map of old vnodes with keys
  final oldKeyedNodes = <dynamic, VNode>{};
  for (final c in oldVNode.children) {
    if (c.key != null) {
      oldKeyedNodes[c.key] = c;
    }
  }

  final newKeyedNodes = <dynamic, VNode>{};
  for (final c in newVNode.children) {
    if (c.key != null) {
      newKeyedNodes[c.key] = c;
    }
  }

  while (cursor.index < cursor.newLength || cursor.index < cursor.oldLength) {
    final newChildVNode = cursor.index < cursor.newLength
        ? newVNode.children.elementAt(cursor.index)
        : null;

    // oldChildVNode is variable since it may be changed if a key match is found
    var oldChildVNode = cursor.index < cursor.oldLength
        ? oldVNode.children.elementAt(cursor.index)
        : null;

    if (newChildVNode != null) {
      // find an old node that has the same key as the new node
      final oldChildVNodeWithKey = oldKeyedNodes[newChildVNode.key];

      // if a node with a matching key is found and it is different
      // than the old child at this position update the old nodes
      // children list and move its dom node into this position
      if (oldChildVNodeWithKey != null &&
          oldChildVNode != oldChildVNodeWithKey) {
        // move vnode into the current position
        oldVNode.children.remove(oldChildVNodeWithKey);
        if (cursor.index >= oldVNode.children.length)
          oldVNode.children.add(oldChildVNodeWithKey);
        else
          oldVNode.children.insert(cursor.index, oldChildVNodeWithKey);

        // move the actual element into the current position
        if (cursor.currentChild != null)
          cursor.node
              .insertBefore(oldChildVNodeWithKey.ref, cursor.currentChild);
        else
          cursor.node.append(oldChildVNodeWithKey.ref);

        // if the key no longer exists, move it to the end where it will
        // be cleaned up later. TODO: recycle
        if (oldChildVNode != null) {
          final isRemoval = !newKeyedNodes.containsKey(oldChildVNode.key);
          if (isRemoval) {
            // remove the vnode
            oldVNode.children.remove(oldChildVNode);
            oldVNode.children.add(oldChildVNode);
            cursor.node.append(oldChildVNode.ref);
          } else {
            // otherwise find where the key should live and move it there now
            VNode c;
            for (var i = 0; i < newVNode.children.length; i++) {
              c = newVNode.children[i];
              if (c.key == oldChildVNode.key) {
                if (i >= cursor.node.children.length - 1)
                  cursor.node.append(oldChildVNode.ref);
                else
                  cursor.node.insertBefore(
                      oldChildVNode.ref, cursor.node.children[i + 1]);

                oldVNode.children.remove(oldChildVNode);
                if (i >= oldVNode.children.length)
                  oldVNode.children.add(oldChildVNode);
                else
                  oldVNode.children.insert(i, oldChildVNode);

                break;
              }
            }
          }
        }

        // update oldChildVNode and the cursor's iterator
        cursor.currentChild = oldChildVNodeWithKey.ref;
        oldChildVNode = oldChildVNodeWithKey;
      } else if (oldChildVNode == null) {
        // if the old child was null simply add the new vnode as a child
        oldVNode.children.add(newChildVNode);
      } else if (oldChildVNode.key != newChildVNode.key ||
          oldChildVNode.runtimeType != newChildVNode.runtimeType) {
        // if the runtime type of the new and old child is different
        // make the new vnode the child
        oldVNode.children[cursor.index] = newChildVNode;
      }
    } else {
      // if there is no newChildVNode make sure the oldVNode knows the children
      // at this spot is now null
      oldVNode.children[cursor.index] = null;
    }

    final nextTracker = tracker.nextCursor(
      cursor.node,
      cursor.currentChild,
      newChildVNode,
      oldChildVNode,
    );

    cursor.next();
    final finshed = updateVNode(nextTracker);
    if (!finshed) return false;
  }

  // clean up removed vchildren
  for (var i = oldVNode.children.length - 1;
      oldVNode.children.isNotEmpty && oldVNode.children[i] == null;
      --i) oldVNode.children.removeLast();

  tracker.popPendingCursor();

  return true;
}

void disposeVElement(VElement vnode) {
  vnode.dispose();
  vnode.children.forEach(disposeVNode);
}
