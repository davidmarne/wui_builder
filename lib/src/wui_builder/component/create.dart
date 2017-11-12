part of component;

Element createComponentNode(Component vnode) {
  vnode._state = vnode.getInitialState();
  vnode.componentWillMount();
  vnode._renderResult = vnode.render();
  vnode._renderResult.parent = vnode;
  final domNode = createNode(vnode._renderResult);
  vnode.ref = domNode;
  vnode.componentDidMount();
  return domNode;
}
