part of component;

Element createComponentNode(
    Component vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  // register the beforeAnimationFrameCallback if it is set
  if (vnode.beforeAnimationFrame != null)
    addBeforeAnimationFrameCallback(vnode);

  // lifecycle - set the initial state for the component
  vnode._state = vnode.getInitialState();

  // lifecycle - componentWillMount
  vnode.componentWillMount();

  // build the new virtual tree
  vnode._child = vnode.render();

  // set the parent of the render result to this node
  vnode.child.parent = vnode;

  // create a dom node for the render result
  final domNode = createNode(vnode.child, pendingComponentDidMounts);

  // update the ref on the component instance
  vnode.ref = domNode;

  // lifecycle - componentDidMount
  pendingComponentDidMounts.add(vnode.componentDidMount);

  // return the newly created dom node for this component
  return domNode;
}
