import 'dart:html';
import 'cursors.dart';
import 'update_processor.dart';
import 'update_tracker.dart';
import 'viterable.dart';
import 'vnode.dart';

List<VNode> resolveChildren(List<VNode> children) =>
    children.where((c) => c.vif).toList();

bool updateChildren(UpdateTracker tracker) {
  final cursor = tracker.pendingWork as IterableCursor;
  final oldVNode = cursor.oldVNode;
  final newVNode = cursor.newVNode;

  // build maps of old vnodes with keys
  final oldKeyedNodes = getKeyedChildNodes(oldVNode);
  final newKeyedNodes = getKeyedChildNodes(newVNode);

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
        moveVChildToIndex(oldVNode, oldChildVNodeWithKey, cursor.index);

        // move the actual element into the current position
        if (cursor.willFinish)
          insertAfter(cursor.node, cursor.currentChild, oldChildVNodeWithKey);
        else
          insertBefore(cursor.node, cursor.currentChild, oldChildVNodeWithKey);

        // update oldChildVNode and the cursor's iterator
        cursor.currentChild = oldChildVNodeWithKey.ref;

        // if the key no longer exists, move it to the end where it will
        // be cleaned up later. TODO: recycle if possible
        if (oldChildVNode != null) {
          final newChildVNodeWithOldKey = newKeyedNodes[oldChildVNode.key];
          if (newChildVNodeWithOldKey == null) {
            // remove the vnode. This is really only moving it towards the
            // end of the list, which will cause it to be cleaned up later.
            moveToBack(cursor.node, oldVNode, oldChildVNode);
          } else {
            final index = newVNode.children.indexOf(newChildVNodeWithOldKey);
            if (oldChildVNode.key != newChildVNodeWithOldKey.key) {
              if (cursor.willFinish)
                insertAfter(cursor.node, cursor.currentChild, oldChildVNode);
              else
                insertBefore(cursor.node, cursor.currentChild, oldChildVNode);

              // update the parent vnode's children list
              moveVChildToIndex(oldVNode, oldChildVNode, index);
            }
          }
        }

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

Map<dynamic, VNode> getKeyedChildNodes(Children vNode) {
  // build a map of new vnodes with keys
  final keyedNodes = <dynamic, VNode>{};
  for (final c in vNode.children) {
    if (c.key != null) {
      keyedNodes[c.key] = c;
    }
  }
  return keyedNodes;
}

void moveVChildToIndex(Children parent, VNode child, int index) {
  // move vnode into the current position
  parent.children.remove(child);
  if (index >= parent.children.length)
    parent.children.add(child);
  else
    parent.children.insert(index, child);
}

void insertBefore(Node parent, Node before, VNode child) {
  if (child.vNodeType == VNodeTypes.iterable) {
    parent.insertAllBefore((child as VIterable).childNodes, before);
  } else
    parent.insertBefore(child.ref, before);
}

void insertAfter(Node parent, Node after, VNode vchild) {
  if (after.nextNode == null) {
    if (vchild.vNodeType == VNodeTypes.iterable) {
      (vchild as VIterable).childNodes.forEach(parent.append);
    } else {
      parent.append(vchild.ref);
    }
  } else {
    if (vchild.vNodeType == VNodeTypes.iterable) {
      for (final c in (vchild as VIterable).childNodes) {
        parent.insertBefore(after.nextNode, c);
      }
    } else {
      parent.insertBefore(after.nextNode, vchild.ref);
    }
  }
}

void moveToBack(Node parent, Children vparent, VNode child) {
  // remove the vnode. This is really only moving it towards the
  // end of the list, which will cause it to be cleaned up later.
  vparent.children.remove(child);
  vparent.children.add(child);
  if (child.vNodeType == VNodeTypes.iterable)
    (child as VIterable).childNodes.forEach(parent.append);
  else
    parent.append(child.ref);
}
