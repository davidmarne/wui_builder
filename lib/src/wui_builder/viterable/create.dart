part of viterable;

Node createIterableNode(
    VIterable vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  final Node domNode = document.createDocumentFragment();
  vnode.children = resolveChildren(vnode.children);
  if (vnode.children.isNotEmpty) {
    for (final c in vnode.children) {
      c.parent = vnode;
      domNode.append(createNode(c, pendingComponentDidMounts));
    }
  }

  return domNode;
}
