part of wui_builder;

void _updateNode(Element parent, VNode newVNode, VNode oldVNode, int index) {
  if (oldVNode == null) {
    parent.append(_createNode(newVNode));
  } else if (newVNode == null) {
    if (oldVNode is Component)
      oldVNode.componentWillUnmount(oldVNode._props, oldVNode._state);
    else
      (oldVNode as VElement).dispose();
    parent.children[index].remove();
  } else if (newVNode.runtimeType != oldVNode.runtimeType) {
    if (oldVNode is Component)
      oldVNode.componentWillUnmount(oldVNode._props, oldVNode._state);
    else
      (oldVNode as VElement).dispose();
    parent.children[index] = _createNode(newVNode);
  } else if (newVNode is VElement) {
    _updateElementNode(parent, newVNode, oldVNode, index);
  } else if (newVNode is Component) {
    _updateComponentNode(parent, newVNode, oldVNode, index);
  }
}

void _updateElementNode(
    Element parent, VElement newVNode, VElement oldVNode, int index) {
  final node = parent.children[index];
  newVNode._applyAttributesToElement(node);
  if (newVNode.shouldUpdateSubs)
    newVNode._updateEventListenersToElement(oldVNode, node);
  final newLength = newVNode._children != null ? newVNode._children.length : 0;
  final oldLength = oldVNode._children != null ? oldVNode._children.length : 0;
  for (var i = 0; i < newLength || i < oldLength; i++) {
    _updateNode(
      node,
      i < newVNode._children.length ? newVNode._children.elementAt(i) : null,
      i < oldVNode._children.length ? oldVNode._children.elementAt(i) : null,
      i,
    );
  }
}

void _updateComponentNode(
    Element parent, Component newVNode, Component oldVNode, int index) {
  // copy the state of the last node to the newly created node
  newVNode._state = oldVNode._state;

  // if the should component update fails do not proceed
  if (!newVNode.shouldComponentUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state))
    return;
  newVNode.componentWillUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state);
  newVNode._render(newVNode._props, newVNode._state);
  _updateNode(
    parent,
    newVNode._renderResult,
    oldVNode._renderResult,
    index,
  );
  newVNode.componentDidUpdate(
      oldVNode._props, newVNode._props, oldVNode._state, newVNode._state);
}
