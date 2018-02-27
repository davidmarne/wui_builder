import 'dart:html';

import 'component.dart';
import 'vnode.dart';

enum PendingCursors {
  iterable,
  component,
}

abstract class PendingCursor {
  PendingCursors get cursorType;
}

class IterableCursor extends PendingCursor {
  Children newVNode;
  Children oldVNode;
  Node node;
  final int newLength;
  final int oldLength;
  Node currentChild;
  int index = 0;

  IterableCursor(
      this.node, this.newVNode, this.oldVNode, this.newLength, this.oldLength)
      : currentChild = node.firstChild;

  @override
  PendingCursors get cursorType => PendingCursors.iterable;

  void next() {
    ++index;
    currentChild = currentChild == null ? currentChild : currentChild.nextNode;
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
