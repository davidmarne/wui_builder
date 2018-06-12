part of velement;

Node createElementNode(
    VElement vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Element domNode = vnode.elementFactory();
  vnode.ref = domNode;
  vnode.applyAttributesToElement(domNode);
  vnode.applyEventListenersToElement(domNode);
  // filter vifs
  vnode.children = resolveChildren(vnode.children);
  if (vnode.children.isNotEmpty) {
    for (final c in vnode.children) {
      c.parent = vnode;
      final child = createNode(c, pendingComponentDidMounts);
      if (child != null) domNode.append(child);
    }
  }
  return domNode;
}
