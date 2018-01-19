import '../../wui_builder.dart';
import 'functional.dart';

typedef void SetState<P, S>(StateSetter<P, S> newState);

typedef OutterP StateMapper<InnerP, S, OutterP>(
  InnerP props,
  S state,
  SetState<InnerP, S> setState,
);

enum _UpdateKind { syncr, idle, animationFrame }

/// [withStateSync] will let you map your props, given the recieved props,
/// the state, and a state setter that executes synchronously
ComponentEnhancer<InnerP, OutterP> withStateSync<InnerP, S, OutterP>(
        S defaultState, StateMapper<InnerP, S, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithState<InnerP, S, OutterP>(new _WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..baseProps = props
          ..updateKind = _UpdateKind.syncr
          ..baseComponent = baseComponent);

/// [withStateIdle] will let you map your props, given the recieved props,
/// the state, and a state setter that executes on idle callbacks
ComponentEnhancer<InnerP, OutterP> withStateIdle<InnerP, S, OutterP>(
        S defaultState, StateMapper<InnerP, S, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithState<InnerP, S, OutterP>(new _WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..baseProps = props
          ..updateKind = _UpdateKind.idle
          ..baseComponent = baseComponent);

/// [withStateAnimationFrame] will let you map your props, given the recieved props,
/// the state, and a state setter that executes on animation frame
ComponentEnhancer<InnerP, OutterP> withStateAnimationFrame<InnerP, S, OutterP>(
        S defaultState, StateMapper<InnerP, S, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithState<InnerP, S, OutterP>(new _WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..baseProps = props
          ..updateKind = _UpdateKind.animationFrame
          ..baseComponent = baseComponent);

class _WithStateProps<InnerP, S, OutterP> {
  S defaultState;
  StateMapper<InnerP, S, OutterP> mapper;
  InnerP baseProps;
  _UpdateKind updateKind;
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

  void _setStateSwitch(StateSetter<InnerP, S> s) {
    switch (props.updateKind) {
      case _UpdateKind.syncr:
        _setState(s);
        break;
      case _UpdateKind.idle:
        _setStateOnIdle(s);
        break;
      case _UpdateKind.animationFrame:
        _setStateOnAnimationFrame(s);
        break;
    }
  }

  @override
  VNode render() => props.baseComponent(props.mapper(
        props.baseProps,
        state,
        _setStateSwitch,
      ));
}
