import 'dart:html';

abstract class VNode {
  Element ref;
  VNode parent;
  dynamic key;
  VNodeTypes vNodeType;
}

enum VNodeTypes {
  Element,
  Component,
}
