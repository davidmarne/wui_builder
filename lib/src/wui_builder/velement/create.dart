part of velement;

Element createElementNode(
    VElement vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Element domNode = vnode.elementFactory();
  vnode.ref = domNode;
  vnode.applyAttributesToElement(domNode);
  vnode.applyEventListenersToElement(domNode);
  if (vnode.children.isNotEmpty) {
    for (final c in vnode.children) {
      c.parent = vnode;
      domNode.append(createNode(c, pendingComponentDidMounts));
    }
  }
  return domNode;
}
