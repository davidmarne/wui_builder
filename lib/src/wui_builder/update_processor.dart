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
    // if the new vnode is null dispose of it and remove it from the dom
    disposeVNode(tracker.oldVNode);
    removeNode(tracker.oldVNode);
  } else if (tracker.oldVNode == null) {
    final pendingComponentDidMounts = <ComponentDidMount>[];
    tracker.newVNode.parent = tracker.parentTracker.oldVNode;
    tracker.parent
        .append(createNode(tracker.newVNode, pendingComponentDidMounts));
    for (final cdm in pendingComponentDidMounts) cdm();
  } else if (tracker.newVNode.key != tracker.oldVNode.key ||
      tracker.newVNode.runtimeType != tracker.oldVNode.runtimeType) {
    // if the new vnode is a different vNodeType, dispose the old and replace it with a new one
    disposeVNode(tracker.oldVNode);
    final pendingComponentDidMounts = <ComponentDidMount>[];
    tracker.newVNode.parent = tracker.parentTracker.oldVNode;

    replaceNode(tracker.oldVNode,
        createNode(tracker.newVNode, pendingComponentDidMounts));

    for (final cdm in pendingComponentDidMounts) cdm();
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

// calls the necessary methods to clean up a vnode
void disposeVNode(VNode node) {
  if (node.vNodeType == VNodeTypes.component) {
    disposeComponent(node as Component);
  } else if (node.vNodeType == VNodeTypes.element) {
    disposeVElement(node as VElement);
  } else if (node.vNodeType == VNodeTypes.iterable) {
    disposeVIterable(node as VIterable);
  }
}

void unmount(VNode node) {
  node.ref.remove();
  disposeVNode(node);
}

void removeNode(VNode node) {
  if (node.vNodeType == VNodeTypes.component) {
    removeComponentNode(node as Component);
  } else if (node.vNodeType == VNodeTypes.iterable) {
    for (final c in (node as VIterable).children) c.ref.remove();
  } else {
    node.ref.remove();
  }
}

void replaceNode(VNode vnode, Node newNode) {
  if (vnode.vNodeType == VNodeTypes.component) {
    replaceComponentNode(vnode as Component, newNode);
  } else if (vnode.vNodeType == VNodeTypes.iterable) {
    print('eyyy');
    var first = true;
    for (final c in (vnode as VIterable).children) {
      if (first) {
        c.ref.replaceWith(newNode);
        first = false;
      } else {
        c.ref.remove();
      }
    }
  } else {
    vnode.ref.replaceWith(newNode);
  }
}
