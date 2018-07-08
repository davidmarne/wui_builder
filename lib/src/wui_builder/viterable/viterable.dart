part of viterable;

/// Warning! this is experimental and has known bugs.
/// VIterable lets you insert multiple children
/// into the virtual tree without a new parent dom element.
/// `ref` gets set to the first child in the list.
///
/// example:
/// ```
/// final names = ['john', 'sally'];
/// new Vdiv()
///   ..children = [
///   new VText('hello '),
///   new VIterable(
///     names.map((name) => new VText('$name ')),
///   ),
/// ];
/// ```
/// yields
/// <div>hello john sally</div>
///
/// `ref` is the Text node representing 'john'
@experimental
class VIterable extends VNode implements Children {
  @override
  List<VNode> children;

  VIterable(Iterable<VNode> children, {dynamic key, bool vif}) {
    this.children = children?.toList() ?? <VNode>[];
    this.key = key;
    this.vif = vif ?? true;
  }

  @override
  VNodeTypes get vNodeType => VNodeTypes.iterable;

  @override
  Node get ref => children.first.ref;

  Node get firstChild => children.isEmpty ? null : children.first.ref;

  Node get lastChild => children.isEmpty ? null : children.last.ref;

  Iterable<Node> get childNodes => children.map(_getRef);

  Node _getRef(VNode node) => node.ref;
}
