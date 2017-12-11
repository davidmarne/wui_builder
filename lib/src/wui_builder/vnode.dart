import 'dart:html';

abstract class VNode {
  /// The acutal dom node for the virtual node
  Element ref;

  /// The [parent] virtual element
  VNode parent;

  /// A [key] to uniquly identify a VNode. If the [key] of a
  /// VNode changes the VNode will be forced to rerender
  dynamic key;

  /// Identifies if the VNode is a component or element
  VNodeTypes get vNodeType;
}

enum VNodeTypes {
  element,
  component,
}
