part of vtext;

class VText extends VNode {
  String _text;

  VText(this._text, {dynamic key, bool vif}) {
    this.key = key;
    vif = vif ?? true;
  }

  String get text => _text;

  @override
  VNodeTypes get vNodeType => VNodeTypes.text;
}
