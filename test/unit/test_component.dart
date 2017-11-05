import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

String expectedText(int p, int s) => '$p $s';

typedef void TestComponentWillMount(int props, int state);
typedef void TestComponentDidMount(int props, int state);
typedef bool TestShouldComponentUpdate(
    int props, int nextProps, int prevState, int nextState);
typedef void TestComponentWillUpdate(
    int props, int nextProps, int prevState, int nextState);
typedef void TestComponentDidUpdate(
    int prevProps, int nextProps, int prevState, int nextState);
typedef void TestComponentWillUnmount(int props, int state);

class TestComponentProps {
  TestComponentWillMount componentWillMount;
  TestComponentDidMount componentDidMount;
  TestShouldComponentUpdate shouldComponentUpdate;
  TestComponentWillUpdate componentWillUpdate;
  TestComponentDidUpdate componentDidUpdate;
  TestComponentWillUnmount componentWillUnmount;
  int baseProps;
}

class TestComponent
    extends Component<TestComponentProps, TestComponentProps> {
  TestComponent(TestComponentProps props) : super(props);

  @override
  TestComponentProps getInitialState() => props;

  void updateState(TestComponentProps p) {
    update(stateSetter: (_1, _2) => p);
  }

  void updateStateIdle(TestComponentProps p) =>
      updateOnIdle(stateSetter: (_1, _2) => p);

  @override
  void componentWillMount() {
    if (state.componentWillMount != null)
      state.componentWillMount(props.baseProps, state.baseProps);
  }

  @override
  void componentDidMount() {
    if (state.componentDidMount != null)
      state.componentDidMount(props.baseProps, state.baseProps);
  }

  @override
  bool shouldComponentUpdate(nextProps, nextState) {
    if (state.shouldComponentUpdate != null)
      return nextState.shouldComponentUpdate(props.baseProps,
          nextProps.baseProps, state.baseProps, nextState.baseProps);
    return super.shouldComponentUpdate(nextProps, nextState);
  }

  @override
  void componentWillUpdate(nextProps, nextState) {
    if (state.componentWillUpdate != null)
      nextState.componentWillUpdate(props.baseProps, nextProps.baseProps,
          state.baseProps, nextState.baseProps);
  }

  @override
  void componentDidUpdate(prevProps, prevState) {
    if (state.componentDidUpdate != null)
      state.componentDidUpdate(prevProps.baseProps, props.baseProps,
          prevState.baseProps, state.baseProps);
  }

  @override
  void componentWillUnmount() {
    if (state.componentWillUnmount != null)
      state.componentWillUnmount(props.baseProps, state.baseProps);
  }

  @override
  VNode render() {
    return new VDivElement()
      ..text = expectedText(props.baseProps, state.baseProps);
  }
}

TestComponentWillMount expectComponentWillMount(
        int expectedProps, int expectedState) =>
    (acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    };

TestComponentDidMount expectComponentDidMount(
        int expectedProps, int expectedState) =>
    (acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    };

TestComponentWillUnmount expectComponentWillUnmount(
        int expectedProps, int expectedState) =>
    (acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    };

TestShouldComponentUpdate expectShouldComponentUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {bool shouldUpdate: true}) =>
    (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
      return shouldUpdate;
    };

TestComponentWillUpdate expectComponentWillUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState) =>
    (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
    };

TestComponentDidUpdate expectComponentDidUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState) =>
    (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
    };

void failOnComponentWillMount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentWillMount');
void failOnComponentDidMount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentDidMount');
void failOnComponentWillUnmount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentWillUnmount');
bool failOnShouldComponentUpdate(dynamic acutalPrevProps,
    dynamic actualNextProps, dynamic actualPrevState, dynamic actualNextState) {
  fail('failOnShouldComponentUpdate');
  return false;
}

void failOnComponentWillUpdate(dynamic acutalPrevProps, dynamic actualNextProps,
        dynamic actualPrevState, dynamic actualNextState) =>
    fail('failOnComponentWillUpdate');
void failOnComponentDidUpdate(dynamic acutalPrevProps, dynamic actualNextProps,
        dynamic actualPrevState, dynamic actualNextState) =>
    fail('failOnComponentDidUpdate');
