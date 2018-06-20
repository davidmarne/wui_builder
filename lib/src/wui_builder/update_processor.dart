import 'dart:html';
import 'component.dart';
import 'create_nodes.dart';
import 'update_tracker.dart';
import 'velement.dart';
import 'viterable.dart';
import 'vnode.dart';
import 'vtext.dart';

// returns true if the update was complete
bool updateVNode(UpdateTracker tracker) {
  // if the tracker.deadline is hit request another idle period
  if (tracker.shouldPause) return false;

  if (tracker.newVNode == null) {
    // if the new vnode is null then we need to unmount the old vnode
    unmount(tracker.oldVNode);
  } else if (tracker.oldVNode == null) {
    // create and append the new node
    replaceOrAppend(tracker);
  } else if (tracker.newVNode.key != tracker.oldVNode.key ||
      tracker.newVNode.runtimeType != tracker.oldVNode.runtimeType) {
    // create the new node and replace the old
    replaceOrAppend(tracker);
  } else if (tracker.newVNode.vNodeType == VNodeTypes.element) {
    return updateElement(tracker);
  } else if (tracker.newVNode.vNodeType == VNodeTypes.component) {
    return updateComponent(tracker);
  } else if (tracker.newVNode.vNodeType == VNodeTypes.text) {
    return updateText(tracker);
  } else {
    return updateIterable(tracker);
  }

  return true;
}

void replaceOrAppend(UpdateTracker tracker) {
  // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
  if (tracker.oldVNode != null) disposeVNode(tracker.oldVNode);

  // create a list of components that will mount after appending
  // the new node to the dom
  final pendingComponentDidMounts = <ComponentDidMount>[];

  // set the parent of the new vnode to the parent of the old node
  tracker.newVNode.parent = tracker.parentTracker.oldVNode;

  // create the new dom element
  final newDomNode = createNode(tracker.newVNode, pendingComponentDidMounts);

  // if the oldVNode is null create the new node and append it to the dom
  // if the oldVNode is not null replace it
  if (tracker.oldVNode != null)
    replaceNode(tracker.oldVNode, newDomNode);
  else
    tracker.parent.append(newDomNode);

  // call component did mound on each child
  for (final cdm in pendingComponentDidMounts) cdm();
}

// calls the necessary methods to clean up a vnode
void disposeVNode(VNode node) {
  switch (node.vNodeType) {
    case VNodeTypes.component:
      disposeComponent(node as Component);
      break;
    case VNodeTypes.element:
      disposeVElement(node as VElement);
      break;
    case VNodeTypes.iterable:
      disposeVIterable(node as VIterable);
      break;
  }
}

void unmount(VNode node) {
  disposeVNode(node);
  removeNode(node);
}

void removeNode(VNode node) {
  switch (node.vNodeType) {
    case VNodeTypes.component:
      removeComponentNode(node as Component);
      break;
    case VNodeTypes.iterable:
      removeIterableNode(node as VIterable);
      break;
    default:
      node.ref.remove();
  }
}

void replaceNode(VNode vnode, Node newNode) {
  switch (vnode.vNodeType) {
    case VNodeTypes.component:
      replaceComponentNode(vnode as Component, newNode);
      break;
    case VNodeTypes.iterable:
      replaceIterableNode(vnode as VIterable, newNode);
      break;
    default:
      vnode.ref.replaceWith(newNode);
  }
}
