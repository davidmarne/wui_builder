import 'package:wui_builder/wui_builder.dart';

class IterableTestComponent
    extends Component<Iterable<VNode>, Iterable<VNode>> {
  IterableTestComponent(Iterable<VNode> props) : super(props);

  @override
  Iterable<VNode> getInitialState() => props;

  void setChildren(Iterable<VNode> children) => setState((_, __) => children);

  @override
  VNode render() => VIterable(state);
}
