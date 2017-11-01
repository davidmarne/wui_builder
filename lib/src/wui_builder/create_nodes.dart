part of wui_builder;

render(VNode vnode, Element mount) {
  mount.append(_createNode(vnode));
}

Element _createNode(VNode vnode) {
  if (vnode is VElement) {
    return _createElementNode(vnode);
  } else {
    return _createComponentNode(vnode);
  }
}

Element _createElementNode(VElement vnode) {
  final Element domNode = vnode._elementFactory();
  vnode.ref = domNode;
  vnode._applyAttributesToElement(domNode);
  if (vnode._shouldUpdateSubs) vnode._applyEventListenersToElement(domNode);
  if (vnode.children != null) {
    for (final c in vnode.children) {
      domNode.append(_createNode(c));
      c.parent = vnode;
    }
  }
  return domNode;
}

Element _createComponentNode(Component vnode) {
  vnode.componentWillMount(vnode._props, vnode._state);
  vnode._render(vnode._props, vnode._state);
  final domNode = _createNode(vnode._renderResult);
  vnode.ref = domNode;
  vnode.componentDidMount(vnode._props, vnode._state);
  vnode._renderResult.parent = vnode;
  return domNode;
}
