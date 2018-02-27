import 'dart:html';

import 'component.dart';
import 'velement.dart';
import 'viterable.dart';
import 'vnode.dart';
import 'vtext.dart';

typedef void ComponentDidMount();

void render(VNode vnode, Node mount) {
  final pendingComponentDidMounts = <ComponentDidMount>[];
  final ele = createNode(vnode, pendingComponentDidMounts);
  if (ele != null) mount.append(ele);
  for (final cdm in pendingComponentDidMounts) cdm();
}

Node createNode(
    VNode vnode, List<ComponentDidMount> pendingComponentDidMounts) {
  if (vnode.vNodeType == VNodeTypes.element) {
    return createElementNode(vnode as VElement, pendingComponentDidMounts);
  } else if (vnode.vNodeType == VNodeTypes.component) {
    return createComponentNode(vnode as Component, pendingComponentDidMounts);
  } else if (vnode.vNodeType == VNodeTypes.text) {
    return createTextNode(vnode as VText);
  } else {
    return createIterableNode(vnode as VIterable, pendingComponentDidMounts);
  }
}
