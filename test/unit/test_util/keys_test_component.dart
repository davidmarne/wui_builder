import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';

void expectRenderedOutput(
    Element host, Iterable<String> keys, Iterable<int> stateValues) {
  expect(host.children.length, 1);
  expect(host.children.first.children.length, keys.length);
  expect(stateValues.length, keys.length);
  for (var i = 0; i < keys.length; i++)
    _expectRenderedChildOutput(
      host.children.first.children[i],
      keys.elementAt(i),
      stateValues.elementAt(i),
    );
}

void _expectRenderedChildOutput(Element node, dynamic key, int stateValue) {
  expect(node.text, _expectedText(key, stateValue));
}

String _expectedText(dynamic key, int stateValue) => '$key $stateValue';

class KeyTestProps {
  Iterable<String> dataKeys;
  bool isKeyed;
}

class KeyTestComponent extends Component<KeyTestProps, Iterable<String>> {
  KeyTestComponent(KeyTestProps props) : super(props);

  @override
  Iterable<String> getInitialState() => props.dataKeys;

  @override
  VNode render() => new VDivElement()
    ..children = props.isKeyed ? _keyedChildren() : _nonKeyedChildren();

  Iterable<VNode> _keyedChildren() =>
      state.map((key) => new KeyedComponent(key)..key = key);

  Iterable<VNode> _nonKeyedChildren() =>
      state.map((key) => new KeyedComponent(key));
}

class KeyedComponent extends Component<String, int> {
  KeyedComponent(String k) : super(k);

  @override
  int getInitialState() => 0;

  void updateState(int next) {
    setState((prevProps, prevState) => next);
  }

  // render state again so we can test pausing between the 2nd & 3rd node
  @override
  VNode render() => new VDivElement()..text = _expectedText(props, state);
}
