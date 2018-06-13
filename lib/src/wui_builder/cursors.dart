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
  final Children newVNode;
  final Children oldVNode;
  final Node node;
  final int newLength;
  final int oldLength;
  final int startIndex;

  Node currentChild;
  int index;

  IterableCursor(
      this.node, this.newVNode, this.oldVNode, this.newLength, this.oldLength,
      {this.startIndex: 0})
      : currentChild = node.firstChild,
        index = startIndex;

  @override
  PendingCursors get cursorType => PendingCursors.iterable;

  void next() {
    ++index;
    currentChild = currentChild == null ? currentChild : currentChild.nextNode;
  }
}

class ComponentUpdateCursor extends PendingCursor {
  final Component vNode;
  final dynamic prevProps;
  final dynamic prevState;
  ComponentUpdateCursor(
    this.vNode,
    this.prevProps,
    this.prevState,
  );

  @override
  PendingCursors get cursorType => PendingCursors.component;
}
