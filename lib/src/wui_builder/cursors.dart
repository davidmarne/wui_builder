import 'dart:html';

import 'component.dart';
import 'velement.dart';

enum PendingCursors {
  Iterable,
  Component,
}

abstract class PendingCursor {
  PendingCursors get cursorType;
}

class IterableCursor extends PendingCursor {
  final cursorType = PendingCursors.Iterable;
  VElement newVNode;
  VElement oldVNode;
  Element node;
  final int newLength;
  final int oldLength;
  Element currentChild;
  int index = 0;

  IterableCursor(this.node, this.newVNode, this.oldVNode)
      : currentChild = node.children.length > 0 ? node.children.first : null,
        newLength = newVNode.children.length,
        oldLength = oldVNode.children.length;

  void next() {
    index++;
    if (currentChild != null) currentChild = currentChild.nextElementSibling;
  }
}

class ComponentUpdateCursor extends PendingCursor {
  final cursorType = PendingCursors.Component;
  Component vNode;
  dynamic prevProps;
  dynamic nextProps;
  dynamic prevState;
  dynamic nextState;
  ComponentUpdateCursor(
    this.vNode,
    this.prevProps,
    this.prevState,
  );
}
