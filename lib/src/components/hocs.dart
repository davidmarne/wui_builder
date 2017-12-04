import '../../wui_builder.dart';

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

class UpdateBlocker extends Component<VNode, Null> {
  UpdateBlocker(VNode props) : super(props);

  @override
  bool shouldComponentUpdate(_, __) => false;

  @override
  VNode render() => props;
}
