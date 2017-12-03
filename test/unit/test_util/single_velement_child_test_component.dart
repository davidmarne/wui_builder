import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'abstract_test_component.dart';

void expectRenderedOutput(
    Element host, int propValue, int stateValue, int contextValue) {
  expect(host.children.length, 1);
  expect(host.children.first.text,
      _expectedText(propValue, stateValue, contextValue));
}

String _expectedText(int propValue, int stateValue, int contextValue) =>
    '$propValue $stateValue $contextValue';

class SingleVElementChildProps extends TestComponentProps {
  int context;
}

class SingleVElementChildComponent
    extends TestComponent<SingleVElementChildProps> {
  SingleVElementChildComponent(SingleVElementChildProps props) : super(props);

  @override
  SingleVElementChildProps getInitialState() => props;

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{testContextKey: props.context};

  void updateState(SingleVElementChildProps p) {
    setState((_1, prevState) => p..actualValue = prevState.actualValue + 1);
  }

  void updateStateIdle(SingleVElementChildProps p, {bool shouldAbort: false}) =>
      setStateOnIdle(
          (_1, prevState) => p..actualValue = prevState.actualValue + 1,
          shouldAbort: shouldAbort);

  @override
  VNode render() => new VDivElement()
    ..text = _expectedText(
        props.actualValue, state.actualValue, context[testContextKey] as int);
}
