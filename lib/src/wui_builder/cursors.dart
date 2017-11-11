import 'dart:html';

import 'component.dart';
import 'velement.dart';
import 'vnode.dart';

class Cursor {
  Element parent;
  Element node;
  VNode newVNode;
  VNode oldVNode;
  Cursor(this.parent, this.node, this.newVNode, this.oldVNode);
}

enum PendingCursors {
  Iterable,
  Component,
}

abstract class PendingCursor extends Cursor {
  PendingCursors get cursorType;
  PendingCursor(
      Element parent, Element currentChild, VNode newVNode, VNode oldVNode)
      : super(parent, currentChild, newVNode, oldVNode);
}

class IterableCursor extends PendingCursor {
  final cursorType = PendingCursors.Iterable;
  final int newLength;
  final int oldLength;
  Element currentChild;
  int index = 0;

  IterableCursor(
      Element parent, Element node, VElement newVNode, VElement oldVNode)
      : currentChild = node.children.length > 0 ? node.children.first : null,
        newLength = newVNode.children.length,
        oldLength = oldVNode.children.length,
        super(parent, node, newVNode, oldVNode);

  void next() {
    index++;
    if (currentChild != null) currentChild = currentChild.nextElementSibling;
  }
}

class ComponentUpdateCursor extends PendingCursor {
  final cursorType = PendingCursors.Component;
  dynamic prevProps;
  dynamic nextProps;
  dynamic prevState;
  dynamic nextState;
  ComponentUpdateCursor(
    Element parent,
    Element currentChild,
    Component newVNode,
    Component oldVNode,
    this.prevProps,
    this.nextProps,
    this.prevState,
    this.nextState,
  )
      : super(parent, currentChild, newVNode, oldVNode);
}
