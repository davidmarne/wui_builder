import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/src/wui_builder/vnode.dart' show VNodeTypes;

void expectRenderedOutput(Element host, VNodeTypes expectedType) {
  switch (expectedType) {
    case VNodeTypes.component:
      expect(host.innerHtml, 'component');
      break;
    case VNodeTypes.text:
      expect(host.innerHtml, 'text');
      break;
    case VNodeTypes.element:
      expect(host.innerHtml, '<div>element</div>');
      break;
    default:
      expect(host.innerHtml, 'iterable');
  }
}

class ChangeChildTypeComponent extends SComponent<VNodeTypes> {
  @override
  VNodeTypes getInitialState() => VNodeTypes.text;

  void updateState(VNodeTypes nextType) {
    setState((prevProps, prevState) => nextType);
  }

  // render state again so we can test pausing between the 2nd & 3rd node
  @override
  VNode render() {
    switch (state) {
      case VNodeTypes.component:
        return new ChildComponent();
      case VNodeTypes.text:
        return new VText('text');
      case VNodeTypes.element:
        return new Vdiv()..text = 'element';
      default:
        return new VIterable([
          new VText('iterable'),
        ]);
    }
  }
}

class ChildComponent extends NComponent {
  // render state again so we can test pausing between the 2nd & 3rd node
  @override
  VNode render() => new VText('component');
}
