part of viterable;

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
class VIterable extends VNode implements Children {
  @override
  List<VNode> children;

  VIterable([this.children]);

  @override
  VNodeTypes get vNodeType => VNodeTypes.iterable;
}
