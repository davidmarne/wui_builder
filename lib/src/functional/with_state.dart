import 'functional.dart';
import '../../wui_builder.dart';

typedef SetState<P, S>(StateSetter<P, S> newState);

typedef OutterP StateMapper<InnerP, S, OutterP>(
    InnerP props, S state, SetState<InnerP, S> setState);

/// withState will pass your component a [state] object and [setState] function
ComponentEnhancer<InnerP, OutterP> withState<InnerP, S, OutterP>(
        S defaultState, StateMapper<InnerP, S, OutterP> mapper) =>
    (FunctionalComponent<OutterP> baseComponent) =>
        (InnerP props) => new WithState<InnerP, S, OutterP>(new WithStateProps()
          ..defaultState = defaultState
          ..mapper = mapper
          ..baseProps = props
          ..baseComponent = baseComponent);

class WithStateProps<InnerP, S, OutterP> {
  S defaultState;
  StateMapper<InnerP, S, OutterP> mapper;
  InnerP baseProps;
  FunctionalComponent<OutterP> baseComponent;
}

class WithState<InnerP, S, OutterP>
    extends Component<WithStateProps<InnerP, S, OutterP>, S> {
  WithState(WithStateProps<InnerP, S, OutterP> props) : super(props);

  @override
  S getInitialState() => props.defaultState;

  void _setState(StateSetter<InnerP, S> s) {
    update(
        stateSetter: (WithStateProps<InnerP, S, OutterP> props, S state) =>
            s(props.baseProps, state));
  }

  render() =>
      props.baseComponent(props.mapper(props.baseProps, state, _setState));
}
