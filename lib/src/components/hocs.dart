import 'dart:html';

import '../../wui_builder.dart';
import 'reduced_components.dart';

class ContextSetterProps<C> {
  String contextKey;
  C contextValue;
  VNode child;
}

abstract class ContextSetter<C> extends Component<ContextSetterProps, Null> {
  ContextSetter(ContextSetterProps<C> props) : super(props);

  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        props.contextKey: props.contextValue,
      };

  @override
  VNode render() => props.child;
}

class UpdateBlocker extends PComponent<VNode> {
  UpdateBlocker(VNode props) : super(props);

  @override
  bool shouldComponentUpdate(_, __) => false;

  @override
  VNode render() => props;
}

class Pure extends PComponent<Component> {
  Pure(Component props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, __) => props.props != nextProps.props;

  @override
  VNode render() => props;
}

class Perf extends PComponent<Component> {
  double _start;

  Perf(Component props) : super(props);

  String get _name => '${props.runtimeType}${key == null ? '' : ' - $key'}';

  @override
  void componentWillMount() {
    _start = window.performance.now();
  }

  @override
  void componentDidMount() {
    // TODO: use named logger
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
