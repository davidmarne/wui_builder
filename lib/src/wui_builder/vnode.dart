import 'dart:html';

abstract class VNode {
  Element ref;
  VNode parent;
  dynamic key;
  VNodeTypes get vNodeType;
}

enum VNodeTypes {
  element,
  component,
}
