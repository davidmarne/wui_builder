import 'dart:html';

import 'component.dart';
import 'velement.dart';
import 'vnode.dart';

void render(VNode vnode, Element mount) {
  mount.append(createNode(vnode));
}

Element createNode(VNode vnode) {
  if (vnode.vNodeType == VNodeTypes.element) {
    return createElementNode(vnode as VElement);
  } else {
    return createComponentNode(vnode as Component);
  }
}
