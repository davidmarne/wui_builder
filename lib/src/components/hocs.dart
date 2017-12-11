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

  // we know child is a component
  @override
  bool shouldComponentUpdate(nextProps, __) => props.props != nextProps.props;

  @override
  VNode render() => props;
}
