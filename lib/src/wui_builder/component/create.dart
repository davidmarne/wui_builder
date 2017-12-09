part of component;

Element createComponentNode(Component vnode) {
  // register the beforeAnimationFrameCallback if it is set
  if (vnode.beforeAnimationFrame != null)
    addBeforeAnimationFrameCallback(vnode.beforeAnimationFrame);

  // lifecycle - set the initial state for the component
  vnode._state = vnode.getInitialState();

  // lifecycle - componentWillMount
  vnode.componentWillMount();

  // build the new virtual tree
  vnode._renderResult = vnode.render();

  // set the parent of the render result to this node
  vnode._renderResult.parent = vnode;

  // create a dom node for the render result
  final domNode = createNode(vnode._renderResult);

  // update the ref on the component instance
  vnode.ref = domNode;

  // lifecycle - componentDidMount
  vnode.componentDidMount();

  // return the newly created dom node for this component
  return domNode;
}
