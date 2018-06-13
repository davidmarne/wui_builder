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

  VIterable([Iterable<VNode> children])
      : this.children = children?.toList() ?? <VNode>[];

  @override
  VNodeTypes get vNodeType => VNodeTypes.iterable;
}
