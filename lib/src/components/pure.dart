import '../../wui_builder.dart';
import 'reduced_components.dart';

abstract class PureComponent<P, S> extends Component<P, S> {
  PureComponent(P props, {dynamic key, bool vif})
      : super(props, key: key, vif: vif);

  @override
  bool shouldComponentUpdate(nextProps, nextState) =>
      props != nextProps || state != nextState;
}

abstract class PurePComponent<P> extends PComponent<P> {
  PurePComponent(P props, {dynamic key, bool vif})
      : super(props, key: key, vif: vif);

  @override
  bool shouldComponentUpdate(nextProps, nextState) => props != nextProps;
}

abstract class PureSComponent<S> extends SComponent<S> {
  @override
  bool shouldComponentUpdate(nextProps, nextState) => state != nextState;
}
