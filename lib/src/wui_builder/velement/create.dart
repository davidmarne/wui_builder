part of velement;

Element createElementNode(
    VElement vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Element domNode = vnode.elementFactory();
  vnode.ref = domNode;
  vnode.applyAttributesToElement(domNode);
  vnode.applyEventListenersToElement(domNode);
  // filter wifs
  vnode.children = vnode.children.where(checkWif);
  if (vnode.children.isNotEmpty) {
    for (final c in vnode.children) {
      c.parent = vnode;
      final child = createNode(c, pendingComponentDidMounts);
      if (child != null) domNode.append(child);
    }
  }
  return domNode;
}
