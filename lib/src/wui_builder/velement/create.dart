part of velement;

Element createElementNode(
    VElement vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Element domNode = vnode.elementFactory();
  vnode.ref = domNode;
  vnode.applyAttributesToElement(domNode);
  if (vnode.shouldUpdateSubs) vnode.applyEventListenersToElement(domNode);
  if (vnode.children != null) {
    for (final c in vnode.children) {
      domNode.append(createNode(c, pendingComponentDidMounts));
      c.parent = vnode;
    }
  }
  return domNode;
}
