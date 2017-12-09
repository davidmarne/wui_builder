import 'dart:html';

import 'component.dart';
import 'velement.dart';

enum PendingCursors {
  iterable,
  component,
}

abstract class PendingCursor {
  PendingCursors get cursorType;
}

class IterableCursor extends PendingCursor {
  VElement newVNode;
  VElement oldVNode;
  Element node;
  final int newLength;
  final int oldLength;
  Element currentChild;
  int index = 0;

  IterableCursor(this.node, this.newVNode, this.oldVNode)
      : currentChild = node.children.isNotEmpty ? node.children.first : null,
        newLength = newVNode.children.length,
        oldLength = oldVNode.children.length;

  @override
  PendingCursors get cursorType => PendingCursors.iterable;

  void next() {
    index++;
    if (currentChild != null) currentChild = currentChild.nextElementSibling;
  }
}

class ComponentUpdateCursor extends PendingCursor {
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

  @override
  PendingCursors get cursorType => PendingCursors.component;
}
