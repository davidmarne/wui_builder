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
    this.node,
    this.newVNode,
    this.oldVNode,
    this.newLength,
    this.oldLength,
    this.currentChild,
  )   : index = 0,
        startIndex = node.childNodes.indexOf(currentChild);

  @override
  PendingCursors get cursorType => PendingCursors.iterable;

  bool get hasFinished => index >= newLength || index >= oldLength;

  bool get willFinish => index == newLength - 1 || index == oldLength - 1;

  int get currentNodeIndex => startIndex + index;

  void next() {
    ++index;
    currentChild = hasFinished ? currentChild : currentChild.nextNode;
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
