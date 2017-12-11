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

class ComponentChildProps extends TestComponentProps {
  int context;
  TestComponentProps nestedComponentProps;
}

class ComponentChildComponent extends TestComponent<ComponentChildProps> {
  ComponentChildComponent(ComponentChildProps props) : super(props);

  @override
  ComponentChildProps getInitialState() => props;

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{testContextKey: props.context};

  void updateState(ComponentChildProps p) {
    setState((_, prevState) => p..actualValue = prevState.actualValue + 1);
  }

  void updateStateIdle(ComponentChildProps p, {bool shouldAbort: false}) =>
      setStateOnIdle(
          (_, prevState) => p..actualValue = prevState.actualValue + 1,
          shouldAbort: shouldAbort);

  @override
  VNode render() => new NestedComponentChildComponent(
      state.nestedComponentProps..actualValue = state.actualValue);
}

class NestedComponentChildComponent extends TestComponent<TestComponentProps> {
  NestedComponentChildComponent(TestComponentProps props) : super(props);

  @override
  TestComponentProps getInitialState() => props;

  void updateState(TestComponentProps p) {
    setState((_, prevState) => p..actualValue = prevState.actualValue + 1);
  }

  void updateStateIdle(TestComponentProps p, {bool shouldAbort: false}) =>
      setStateOnIdle(
          (_, prevState) => p..actualValue = prevState.actualValue + 1,
          shouldAbort: shouldAbort);

  @override
  void componentWillReceiveProps(nextProps, nextState) {
    // mutate 'state' without causing and update
    // this would be bad in practice, but it is nice
    // for testing
    state
      ..componentWillMount = nextProps.componentWillMount
      ..componentDidMount = nextProps.componentDidMount
      ..shouldComponentUpdate = nextProps.shouldComponentUpdate
      ..componentWillUpdate = nextProps.componentWillUpdate
      ..componentDidUpdate = nextProps.componentDidUpdate
      ..componentWillUnmount = nextProps.componentWillUnmount;
    // super.componentWillReceiveProps(nextProps, nextState);
  }

  @override
  VNode render() => new VDivElement()
    ..text = _expectedText(
        props.actualValue, state.actualValue, context[testContextKey] as int);
}
