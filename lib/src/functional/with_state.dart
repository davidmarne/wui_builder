import '../../wui_builder.dart';
import 'functional.dart';

typedef void SetState<P, S>(StateSetter<P, S> newState);
typedef SS StateSetterFactory<InnerP, S, SS>(SetState<InnerP, S> setState);
typedef OutterP StateMapper<InnerP, S, SS, OutterP>(
  InnerP props,
  S state,
  SS stateSetters,
);

enum UpdateKind { syncronous, idleCallback, animationFrame }

/// [withState] will let you map your props, given the recieved props,
/// the state, and a state setter that executes with the update type specified
ComponentEnhancer<InnerP, OutterP> withState<InnerP, S, SS, OutterP>({
  S defaultState,
  StateSetterFactory<InnerP, S, SS> stateSetterFactory,
  StateMapper<InnerP, S, SS, OutterP> mapper,
  UpdateKind updateKind: UpdateKind.animationFrame,
}) =>
    (baseComponent) =>
        (props) => new _WithState<InnerP, S, SS, OutterP>(new _WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..stateSetterFactory = stateSetterFactory
          ..baseProps = props
          ..updateKind = updateKind
          ..baseComponent = baseComponent);

class _WithStateProps<InnerP, S, SS, OutterP> {
  S defaultState;
  StateMapper<InnerP, S, SS, OutterP> mapper;
  InnerP baseProps;
  UpdateKind updateKind;
  FunctionalComponent<OutterP> baseComponent;
  StateSetterFactory<InnerP, S, SS> stateSetterFactory;
}

class _WithState<InnerP, S, SS, OutterP>
    extends Component<_WithStateProps<InnerP, S, SS, OutterP>, S> {
  SS _stateSetters;

  _WithState(_WithStateProps<InnerP, S, SS, OutterP> props) : super(props) {
    _stateSetters = props.stateSetterFactory(_setStateSwitch());
  }

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

  SetState<InnerP, S> _setStateSwitch() {
    switch (props.updateKind) {
      case UpdateKind.syncronous:
        return _setState;
        break;
      case UpdateKind.idleCallback:
        return _setStateOnIdle;
        break;
      case UpdateKind.animationFrame:
        return _setStateOnAnimationFrame;
        break;
    }
    throw Exception('invalid update kind');
  }

  @override
  VNode render() => props.baseComponent(props.mapper(
        props.baseProps,
        state,
        _stateSetters,
      ));
}
