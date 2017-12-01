import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';

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
  int context;
  int baseProps;
  ChildFactory child;
}

class TestComponent extends Component<TestComponentProps, TestComponentProps> {
  TestComponent(TestComponentProps props) : super(props);

  VNode child;

  @override
  TestComponentProps getInitialState() => props;

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{testContextKey: props.context};

  void updateState(TestComponentProps p) {
    setState((_1, prevState) => p..baseProps = prevState.baseProps + 1);
  }

  void updateStateIdle(TestComponentProps p, {bool shouldAbort: false}) =>
      setStateOnIdle((_1, prevState) => p..baseProps = prevState.baseProps + 1,
          shouldAbort: shouldAbort);

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

//   @override
//   void componentWillReceiveProps(nextProps) {}

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
    final nextChild = props.child(props.baseProps, state.baseProps);
    child = child ?? nextChild;
    return nextChild;
  }
}

TestComponentWillMount expectComponentWillMount(
        int expectedProps, int expectedState) =>
    expectAsync2((acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    });

TestComponentDidMount expectComponentDidMount(
        int expectedProps, int expectedState) =>
    expectAsync2((acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    });

TestComponentWillUnmount expectComponentWillUnmount(
        int expectedProps, int expectedState) =>
    expectAsync2((acutalProps, actualState) {
      expect(expectedProps, acutalProps);
      expect(expectedState, actualState);
    });

TestShouldComponentUpdate expectShouldComponentUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {bool shouldUpdate: true, int count: 1}) =>
    expectAsync4(
        (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
      return shouldUpdate;
    }, count: count);

TestComponentWillUpdate expectComponentWillUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {int count: 1}) =>
    expectAsync4(
        (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
    }, count: count);

TestComponentDidUpdate expectComponentDidUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {int count: 1}) =>
    expectAsync4(
        (acutalPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(expectedPrevProps, acutalPrevProps);
      expect(expectedNextProps, actualNextProps);
      expect(expectedPrevState, actualPrevState);
      expect(expectedNextState, actualNextState);
    }, count: count);

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

typedef VNode ChildFactory(int p, int s);
String expectedText(int p, int s) => '$p $s';
VNode propStateText(int p, int s) =>
    new VDivElement()..text = expectedText(p, s);

typedef VNode NestedFactory(int p, int s);
String expectedTextNested(int p, int s, int nestedp, int nesteds) =>
    '$p $s $nestedp $nesteds';
NestedFactory nestedComponent(TestComponentProps ownProps) =>
    (int p, int s) => new TestComponent(ownProps
      ..child = (int nestedp, int nesteds) => (new VDivElement()
        ..text = expectedTextNested(p, s, nestedp, nesteds)));

final testContextKey = 'testContextKey';
String expectedTextContext(int p, int s, int c) => '$p $s $c';
VNode propStateContextText(int p, int s) => new TestContextComponent(
      new TestContextComponentProps()
        ..p = p
        ..s = s,
    );

class TestContextComponentProps {
  int p;
  int s;
}

class TestContextComponent extends Component<TestContextComponentProps, Null> {
  TestContextComponent(TestContextComponentProps props) : super(props);

  @override
  render() => new VDivElement()
    ..text =
        expectedTextContext(props.p, props.s, context[testContextKey] as int);
}
