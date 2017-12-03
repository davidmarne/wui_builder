import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

import 'test_component_util.dart';

const testContextKey = 'testContextKey';

class TestComponentProps {
  TestComponentWillMount componentWillMount;
  TestComponentDidMount componentDidMount;
  TestComponentWillReceiveProps componentWillReceiveProps;
  TestShouldComponentUpdate shouldComponentUpdate;
  TestComponentWillUpdate componentWillUpdate;
  TestComponentDidUpdate componentDidUpdate;
  TestComponentWillUnmount componentWillUnmount;
  int actualValue;
}

abstract class TestComponent<PS extends TestComponentProps>
    extends Component<PS, PS> {
  TestComponent(PS props) : super(props);

  @override
  PS getInitialState() => props;

  @override
  void componentWillMount() {
    state.componentWillMount(props.actualValue, state.actualValue);
  }

  @override
  void componentDidMount() {
    state.componentDidMount(props.actualValue, state.actualValue);
  }

  @override
  void componentWillReceiveProps(nextProps, nextState) {
    // if componentWillReceiveProps is called state should
    // always be identical to nextState
    expect(state, nextState);
    nextState.componentWillReceiveProps(
        nextProps.actualValue, nextState.actualValue);
  }

  @override
  bool shouldComponentUpdate(nextProps, nextState) {
    return nextState.shouldComponentUpdate(props.actualValue,
        nextProps.actualValue, state.actualValue, nextState.actualValue);
  }

  @override
  void componentWillUpdate(nextProps, nextState) {
    nextState.componentWillUpdate(props.actualValue, nextProps.actualValue,
        state.actualValue, nextState.actualValue);
  }

  @override
  void componentDidUpdate(prevProps, prevState) {
    state.componentDidUpdate(prevProps.actualValue, props.actualValue,
        prevState.actualValue, state.actualValue);
  }

  @override
  void componentWillUnmount() {
    state.componentWillUnmount(props.actualValue, state.actualValue);
  }
}
