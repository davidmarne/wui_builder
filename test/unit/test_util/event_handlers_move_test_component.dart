import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

void expectRenderedOutput(
    Element host, Iterable<String> keys, Iterable<bool> checkedValues) {
  expect(host.children.length, 1);
  expect(host.children.first.children.length, keys.length);
  expect(checkedValues.length, keys.length);
  for (var i = 0; i < keys.length; i++)
    _expectRenderedChildOutput(
      host.children.first.children[i],
      keys.elementAt(i),
      checkedValues.elementAt(i),
    );
}

void _expectRenderedChildOutput(Element node, dynamic key, bool checkedValue) {
  final spanChild = node.firstChild;
  final checkboxChild = node.lastChild as CheckboxInputElement;
  expect(spanChild.text, _expectedText(key));
  expect(checkboxChild.checked, checkedValue);
}

String _expectedText(dynamic key) => '$key';

class EventHandlerTestProps {
  Iterable<String> dataKeys;
  bool isKeyed;
}

class EventHandlerTestComponent
    extends Component<EventHandlerTestProps, Iterable<String>> {
  EventHandlerTestComponent(EventHandlerTestProps props) : super(props);

  @override
  Iterable<String> getInitialState() => props.dataKeys;

  @override
  VNode render() => new VDivElement()
    ..children = props.isKeyed ? _keyedChildren() : _nonKeyedChildren();

  Iterable<VNode> _keyedChildren() =>
      state.map((key) => new CheckBoxChildComponent(key)..key = key);

  Iterable<VNode> _nonKeyedChildren() =>
      state.map((key) => new CheckBoxChildComponent(key));
}

class CheckBoxChildComponent extends Component<String, bool> {
  CheckBoxChildComponent(String k) : super(k);

  @override
  bool getInitialState() => false;

  void _updateState(Event e) {
    setState((prevProps, prevState) => !prevState);
  }

  @override
  VNode render() => new VDivElement()
    ..children = [
      new Vspan()..text = _expectedText(props),
      new VCheckboxInputElement()
        ..checked = state
        ..onClick = _updateState,
    ];
}
