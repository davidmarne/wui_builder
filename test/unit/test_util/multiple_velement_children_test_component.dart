import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'abstract_test_component.dart';

void expectRenderedOutput(Element host, int propValue, int firstStateValue,
    int secondStateValue, int contextValue) {
  expect(host.children.length, 1);
  expect(host.children.first.children.length, 4);
  expect(host.children.first.children[0].text, '$propValue');
  expect(host.children.first.children[1].text, '$firstStateValue');
  expect(host.children.first.children[2].text, '$secondStateValue');
  expect(host.children.first.children[3].text, '$contextValue');
}

class MultipleVElementChildrenProps extends TestComponentProps {
  int context;
}

class MultipleVElementChildrenComponent
    extends TestComponent<MultipleVElementChildrenProps> {
  MultipleVElementChildrenComponent(MultipleVElementChildrenProps props)
      : super(props);

  @override
  MultipleVElementChildrenProps getInitialState() => props;

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{testContextKey: props.context};

  void updateState(MultipleVElementChildrenProps p) {
    setState((_1, prevState) => p..actualValue = prevState.actualValue + 1);
  }

  void updateStateIdle(MultipleVElementChildrenProps p,
          {bool shouldAbort: false}) =>
      setStateOnIdle(
          (_1, prevState) => p..actualValue = prevState.actualValue + 1,
          shouldAbort: shouldAbort);

  // render state again so we can test pausing between the 2nd & 3rd node
  @override
  VNode render() => new VDivElement()
    ..children = [
      new VDivElement()..text = '${props.actualValue}',
      new VDivElement()..text = '${state.actualValue}',
      new VDivElement()..text = '${state.actualValue}',
      new VDivElement()..text = '${context[testContextKey] as int}',
    ];
}
