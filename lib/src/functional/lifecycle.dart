import '../../components.dart';
import '../../wui_builder.dart';

import 'functional.dart';

typedef void ComponentWillMount<P>(P props);
typedef void ComponentDidMount<P>(P props);
typedef void ComponentWillReceiveProps<P>(P props, P nextProps);
typedef bool ShouldComponentUpdate<P>(P props, P nextProps);
typedef void ComponentWillUpdate<P>(P props, P nextProps);
typedef void ComponentDidUpdate<P>(P prevProps, P props);
typedef void ComponentWillUnmount<P>(P props);

/// [lifecycle] will call the react lifecycle functions provided.
///
/// Example
///  ```dart
///   class LifeCycleProps {
///     String onMountMessage;
///     String onUpdateMessage;
///   }
///
///   // The props will be transformed from ExampleProps to MappedExampleProps and the
///   // component will be wrapped with a pure should component update.
///   FunctionalComponent<ExampleProps> lifeCycleLogger = lifecycle<LifeCycleProps>(
///     componentWillMount: (props) => print(props.onMountMessage),
///     componentDidUpdate: (prevProps, props) => print(props.onUpdateMessage),
///   )(lifeCycleLoggerBase)
///
///   FunctionalComponent<MappedExampleProps> lifeCycleLoggerBase(LifeCycleProps props) => Dom.div()();
///   ```
ComponentEnhancer<P, P> lifecycle<P>({
  ComponentWillMount<P> componentWillMount,
  ComponentDidMount<P> componentDidMount,
  ComponentWillReceiveProps<P> componentWillReceiveProps,
  ShouldComponentUpdate<P> shouldComponentUpdate,
  ComponentWillUpdate<P> componentWillUpdate,
  ComponentDidUpdate<P> componentDidUpdate,
  ComponentWillUnmount<P> componentWillUnmount,
}) =>
    (baseComponent) => (props) => new _LifeCycle<P>(new _LifeCycleProps()
      ..componentWillMount = componentWillMount
      ..componentDidMount = componentDidMount
      ..componentWillReceiveProps = componentWillReceiveProps
      ..shouldComponentUpdate = shouldComponentUpdate
      ..componentWillUpdate = componentWillUpdate
      ..componentDidUpdate = componentDidUpdate
      ..componentWillUnmount = componentWillUnmount
      ..baseProps = props
      ..baseComponent = baseComponent);

class _LifeCycleProps<P> {
  ComponentWillMount<P> componentWillMount;
  ComponentDidMount<P> componentDidMount;
  ComponentWillReceiveProps<P> componentWillReceiveProps;
  ShouldComponentUpdate<P> shouldComponentUpdate;
  ComponentWillUpdate<P> componentWillUpdate;
  ComponentDidUpdate<P> componentDidUpdate;
  ComponentWillUnmount<P> componentWillUnmount;
  FunctionalComponent<P> baseComponent;
  P baseProps;
}

class _LifeCycle<P> extends PComponent<_LifeCycleProps<P>> {
  _LifeCycle(_LifeCycleProps<P> props) : super(props);

  @override
  void componentWillMount() {
    if (props.componentWillMount != null)
      props.componentWillMount(props.baseProps);
  }

  @override
  void componentDidMount() {
    if (props.componentDidMount != null)
      props.componentDidMount(props.baseProps);
  }

  @override
  bool shouldComponentUpdate(nextProps, nextState) {
    if (props.shouldComponentUpdate != null)
      return props.shouldComponentUpdate(props.baseProps, nextProps.baseProps);
    return super.shouldComponentUpdate(nextProps, nextState);
  }

  @override
  void componentWillUpdate(nextProps, nextState) {
    if (props.componentWillUpdate != null)
      props.componentWillUpdate(props.baseProps, nextProps.baseProps);
  }

  @override
  void componentDidUpdate(prevProps, prevState) {
    if (props.componentDidUpdate != null)
      props.componentDidUpdate(prevProps.baseProps, props.baseProps);
  }

  @override
  void componentWillUnmount() {
    if (props.componentWillUnmount != null)
      props.componentWillUnmount(props.baseProps);
  }

  @override
  VNode render() => props.baseComponent(props.baseProps);
}
