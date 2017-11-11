import 'create_nodes.dart';
import 'component.dart';
import 'update_tracker.dart';
import 'velement.dart';
import 'vnode.dart';

// returns true if the update was complete
bool updateVNode(UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.isPaused) return false;

  if (tracker.cursor.oldVNode == null) {
    tracker.cursor.parent.append(createNode(tracker.cursor.newVNode));
  } else if (tracker.cursor.newVNode == null) {
    // if the new vnode is null dispose of it and remove it from the dom
    disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node?.remove();
  } else if (tracker.cursor.newVNode.vNodeType !=
      tracker.cursor.oldVNode.vNodeType) {
    // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
    disposeVNode(tracker.cursor.oldVNode);
    tracker.cursor.node = createNode(tracker.cursor.newVNode);
  } else if (tracker.cursor.newVNode.vNodeType == VNodeTypes.Element) {
    return updateElement(tracker);
  } else {
    return updateComponent(tracker);
  }

  return true;
}

// calls the necessary methods to clean up a vnode
void disposeVNode(VNode node) {
  if (node.vNodeType == VNodeTypes.Component) {
    disposeComponent(node as Component);
  } else {
    disposeVElement(node as VElement);
  }
}
