part of vtext;

Node createTextNode(VText vnode) {
  final Text domNode = new Text(vnode._text);
  vnode.ref = domNode;
  return domNode;
}
