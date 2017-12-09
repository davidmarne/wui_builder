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

class BeforeAnimationFrameProps extends TestComponentProps {
  int context;
}

class BeforeAnimationFrameComponent
    extends TestComponent<BeforeAnimationFrameProps> {
  BeforeAnimationFrameProps _expectation;

  BeforeAnimationFrameComponent(BeforeAnimationFrameProps props) : super(props);

  @override
  BeforeAnimationFrameProps getInitialState() => props;

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{testContextKey: props.context};

  void setExpectation(BeforeAnimationFrameProps p) {
    _expectation = p;
  }

  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame((_, prevState) =>
            _expectation..actualValue = prevState.actualValue + 1);
      };

  @override
  VNode render() => new VDivElement()
    ..text = _expectedText(
        props.actualValue, state.actualValue, context[testContextKey] as int);
}
