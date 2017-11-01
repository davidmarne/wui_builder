part of wui_builder;

class _Cursor {
  Element parent;
  Element node;
  VNode newVNode;
  VNode oldVNode;
  _Cursor(this.parent, this.node, this.newVNode, this.oldVNode);
}

enum _PendingCursors {
  Iterable,
  Component,
}

abstract class _PendingCursor extends _Cursor {
  _PendingCursors get cursorType;
  _PendingCursor(parent, currentChild, newVNode, oldVNode)
      : super(parent, currentChild, newVNode, oldVNode);
}

class _IterableCursor extends _PendingCursor {
  final cursorType = _PendingCursors.Iterable;
  final int newLength;
  final int oldLength;
  Element currentChild;
  int index = 0;

  _IterableCursor(parent, node, newVNode, oldVNode)
      : currentChild = node.children.length > 0 ? node.children.first : null,
        newLength = newVNode._childrenSet ? newVNode._children.length : 0,
        oldLength = oldVNode._childrenSet ? oldVNode._children.length : 0,
        super(parent, node, newVNode, oldVNode);

  void next() {
    index++;
    if (currentChild != null) currentChild = currentChild.nextElementSibling;
  }
}

class _ComponentUpdateCursor extends _PendingCursor {
  final cursorType = _PendingCursors.Component;
  dynamic prevProps;
  dynamic nextProps;
  dynamic prevState;
  dynamic nextState;
  _ComponentUpdateCursor(
    parent,
    currentChild,
    newVNode,
    oldVNode,
    this.prevProps,
    this.nextProps,
    this.prevState,
    this.nextState,
  )
      : super(parent, currentChild, newVNode, oldVNode);
}
