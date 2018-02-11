part of viterable;

class VIterable extends VNode implements Children {
  @override
  List<VNode> children;

  VIterable([this.children]);

  @override
  VNodeTypes get vNodeType => VNodeTypes.iterable;
}
