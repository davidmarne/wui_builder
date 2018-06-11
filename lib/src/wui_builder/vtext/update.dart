part of vtext;

bool updateText(UpdateTracker tracker) {
  final oldVNode = tracker.oldVNode as VText;
  final newVNode = tracker.newVNode as VText;
  if (oldVNode._text != newVNode._text) {
    oldVNode._text = newVNode._text;
    oldVNode.ref.text = newVNode._text;
  }
  return true;
}
