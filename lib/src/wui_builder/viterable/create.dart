part of viterable;

Node createIterableNode(
    VIterable vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Node domNode = document.createDocumentFragment();
  final children = resolveChildren(vnode.children);
  if (children.isNotEmpty) {
    for (final c in children) {
      c.parent = vnode;
      domNode.append(createNode(c, pendingComponentDidMounts));
    }
  }

  vnode.ref = domNode.firstChild;
  return domNode;
}
