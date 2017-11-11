part of wui_builder;

void render(VNode vnode, Element mount) {
  mount.append(_createNode(vnode));
}

Element _createNode(VNode vnode) {
  if (vnode.vNodeType == VNodeTypes.Element) {
    return _createElementNode(vnode as VElement);
  } else {
    return _createComponentNode(vnode as Component);
  }
}

Element _createElementNode(VElement vnode) {
  final Element domNode = vnode.elementFactory();
  vnode.ref = domNode;
  vnode.applyAttributesToElement(domNode);
  if (vnode.shouldUpdateSubs) vnode.applyEventListenersToElement(domNode);
  if (vnode.children != null) {
    for (final c in vnode.children) {
      domNode.append(_createNode(c));
      c.parent = vnode;
    }
  }
  return domNode;
}

Element _createComponentNode(Component vnode) {
  vnode._state = vnode.getInitialState();
  vnode.componentWillMount();
  vnode._render();
  vnode._renderResult.parent = vnode;
  final domNode = _createNode(vnode._renderResult);
  vnode.ref = domNode;
  vnode.componentDidMount();
  return domNode;
}
