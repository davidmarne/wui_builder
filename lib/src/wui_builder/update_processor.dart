import 'component.dart';
import 'create_nodes.dart';
import 'update_tracker.dart';
import 'velement.dart';
import 'vnode.dart';

// returns true if the update was complete
bool updateVNode(UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.shouldPause) return false;

  if (tracker.newVNode == null) {
    // if the new vnode is null dispose of it and remove it from the dom
    disposeVNode(tracker.oldVNode);
    tracker.node?.remove();
  } else if (tracker.oldVNode == null) {
    final pendingComponentDidMounts = <ComponentDidMount>[];
    tracker.parent
        .append(createNode(tracker.newVNode, pendingComponentDidMounts));
    for (final cdm in pendingComponentDidMounts) cdm();
  } else if (
      // tracker.newVNode.vNodeType !=
      //       tracker.oldVNode
      //           .vNodeType || // TODO: decide if should keep this first clause
      tracker.newVNode.key != tracker.oldVNode.key ||
          tracker.newVNode.runtimeType != tracker.oldVNode.runtimeType) {
    // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
    disposeVNode(tracker.oldVNode);
    final pendingComponentDidMounts = <ComponentDidMount>[];
    tracker.node
        .replaceWith(createNode(tracker.newVNode, pendingComponentDidMounts));
    for (final cdm in pendingComponentDidMounts) cdm();
  } else if (tracker.newVNode.vNodeType == VNodeTypes.element) {
    return updateElement(tracker);
  } else {
    return updateComponent(tracker);
  }

  return true;
}

// calls the necessary methods to clean up a vnode
void disposeVNode(VNode node) {
  if (node.vNodeType == VNodeTypes.component) {
    disposeComponent(node as Component);
  } else {
    disposeVElement(node as VElement);
  }
}
