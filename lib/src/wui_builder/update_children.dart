import 'cursors.dart';
import 'update_processor.dart';
import 'update_tracker.dart';
import 'viterable.dart';
import 'vnode.dart';

List<VNode> resolveChildren(List<VNode> children) => children
    .expand((vnode) => vnode.vif
        ? vnode is VIterable ? resolveChildren(vnode.children) : [vnode]
        : <VNode>[])
    .toList();

bool updateChildren(UpdateTracker tracker) {
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

  // build a map of new vnodes with keys
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
        // be cleaned up later. TODO: recycle if possible
        if (oldChildVNode != null) {
          final isRemoval = !newKeyedNodes.containsKey(oldChildVNode.key);
          if (isRemoval) {
            // remove the vnode. This is really only moving it towards the
            // end of the list, which will cause it to be cleaned up later.
            oldVNode.children.remove(oldChildVNode);
            oldVNode.children.add(oldChildVNode);
            cursor.node.append(oldChildVNode.ref);
          } else {
            // otherwise find where the key should live and move it there now
            VNode c;
            for (var i = 0; i < newVNode.children.length; i++) {
              c = newVNode.children[i];
              if (c.key == oldChildVNode.key) {
                // insert the actual dom element
                if (i >= cursor.node.childNodes.length - 1)
                  cursor.node.append(oldChildVNode.ref);
                else
                  cursor.node.insertBefore(
                      oldChildVNode.ref, cursor.node.childNodes[i + 1]);

                // update the parent vnode's children list
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
