part of vtext;

class VText extends VNode {
  String _text;

  String get text => _text;

  VText(this._text);

  @override
  VNodeTypes get vNodeType => VNodeTypes.text;
}
