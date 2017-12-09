import '../../wui_builder.dart';
import 'functional.dart';

typedef void SetState<P, S>(StateSetter<P, S> newState);

typedef OutterP StateMapper<InnerP, S, OutterP>(
    InnerP props,
    S state,
    SetState<InnerP, S> setState,
    SetState<InnerP, S> setStateOnIdle,
    SetState<InnerP, S> setStateOnAnimationFrame);

/// [withState] will let you map your props, given the recieved props,
/// the state, and a state setter
ComponentEnhancer<InnerP, OutterP> withState<InnerP, S, OutterP>(
        S defaultState, StateMapper<InnerP, S, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithState<InnerP, S, OutterP>(new _WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..baseProps = props
          ..baseComponent = baseComponent);

class _WithStateProps<InnerP, S, OutterP> {
  S defaultState;
  StateMapper<InnerP, S, OutterP> mapper;
  InnerP baseProps;
  FunctionalComponent<OutterP> baseComponent;
}

class _WithState<InnerP, S, OutterP>
    extends Component<_WithStateProps<InnerP, S, OutterP>, S> {
  _WithState(_WithStateProps<InnerP, S, OutterP> props) : super(props);

  @override
  S getInitialState() => props.defaultState;

  void _setState(StateSetter<InnerP, S> s) {
    setState((sprops, state) => s(props.baseProps, state));
  }

  void _setStateOnIdle(StateSetter<InnerP, S> s) {
    setStateOnIdle((sprops, state) => s(props.baseProps, state));
  }

  void _setStateOnAnimationFrame(StateSetter<InnerP, S> s) {
    setStateOnAnimationFrame((sprops, state) => s(props.baseProps, state));
  }

  @override
  VNode render() => props.baseComponent(props.mapper(
        props.baseProps,
        state,
        _setState,
        _setStateOnIdle,
        _setStateOnAnimationFrame,
      ));
}
