import 'dart:html';
import 'package:meta/meta.dart';
import '../../wui_builder.dart';
import 'reduced_components.dart';

@immutable
class _ContextSetterProps<C> {
  final String contextKey;
  final C contextValue;
  final VNode child;
  const _ContextSetterProps(this.contextKey, this.contextValue, this.child);
}

abstract class ContextSetter<C>
    extends Component<_ContextSetterProps<C>, Null> {
  ContextSetter({
    @required String contextKey,
    @required C contextValue,
    @required VNode child,
    dynamic key,
    bool vif,
  }) : super(new _ContextSetterProps(contextKey, contextValue, child),
            key: key, vif: vif);

  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        props.contextKey: props.contextValue,
      };

  @override
  VNode render() => props.child;
}

class UpdateBlocker extends PComponent<VNode> {
  UpdateBlocker({
    @required VNode child,
    dynamic key,
    bool vif,
  }) : super(child, key: key, vif: vif);

  @override
  bool shouldComponentUpdate(_, __) => false;

  @override
  VNode render() => props;
}

class Pure extends PComponent<Component> {
  Pure({
    @required Component child,
    dynamic key,
    bool vif,
  }) : super(child, key: key, vif: vif);

  @override
  bool shouldComponentUpdate(nextProps, _) => props.props != nextProps.props;

  @override
  VNode render() => props;
}

class Perf extends PComponent<Component> {
  double _start;

  Perf({
    @required Component child,
    dynamic key,
    bool vif,
  }) : super(child, key: key, vif: vif);

  String get _name => '${props.runtimeType}${key == null ? '' : ' - $key'}';

  @override
  void componentWillMount() {
    _start = window.performance.now();
  }

  @override
  void componentDidMount() {
    final totalTimeMs = window.performance.now() - _start;
    print('Perf Mount: $_name - $totalTimeMs');
  }

  @override
  void componentWillUpdate(np, ns) {
    _start = window.performance.now();
  }

  @override
  void componentDidUpdate(pp, ps) {
    final totalTimeMs = window.performance.now() - _start;
    print('Perf Update: $_name - $totalTimeMs');
  }

  @override
  VNode render() => props;
}

class UpdateDebugger extends PComponent<Component> {
  UpdateDebugger({
    @required Component child,
    dynamic key,
    bool vif,
  }) : super(child, key: key, vif: vif);

  @override
  void componentWillUpdate(np, ns) {
    print('componentDidUpdate');
    print('prev props: $props');
    print('next props: $np');
    print('prev state: $state');
    print('next state: $ns');
  }

  @override
  VNode render() => props;
}
