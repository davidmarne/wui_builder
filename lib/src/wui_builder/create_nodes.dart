import 'dart:html';

import 'component.dart';
import 'velement.dart';
import 'vnode.dart';

typedef void ComponentDidMount();

void render(VNode vnode, Element mount) {
  final pendingComponentDidMounts = <ComponentDidMount>[];
  final ele = createNode(vnode, pendingComponentDidMounts);
  if (ele != null) mount.append(ele);
  for (final cdm in pendingComponentDidMounts) cdm();
}

Element createNode(
    VNode vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  if (vnode.vNodeType == VNodeTypes.element) {
    return createElementNode(vnode as VElement, pendingComponentDidMounts);
  } else {
    return createComponentNode(vnode as Component, pendingComponentDidMounts);
  }
}
