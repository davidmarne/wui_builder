import '../../wui_builder.dart';

abstract class PComponent<P> extends Component<P, Null> {
  PComponent(P props, {dynamic key, bool vif})
      : super(props, key: key, vif: vif);
}

abstract class SComponent<S> extends Component<Null, S> {
  SComponent({dynamic key, bool vif}) : super(null, key: key, vif: vif);
}

abstract class CComponent<P, S, C> extends Component<P, S> {
  CComponent(P props, {dynamic key, bool vif})
      : super(props, key: key, vif: vif);

  String get contextKey;

  C get contextValue => context[contextKey] as C;
}

abstract class PCComponent<P, C> extends CComponent<P, Null, C> {
  PCComponent(P props, {dynamic key, bool vif})
      : super(props, key: key, vif: vif);
}

abstract class SCComponent<S, C> extends CComponent<Null, S, C> {
  SCComponent({dynamic key, bool vif}) : super(null, key: key, vif: vif);
}

abstract class NComponent extends Component<Null, Null> {
  NComponent({dynamic key, bool vif}) : super(null, key: key, vif: vif);
}

abstract class NCComponent<C> extends CComponent<Null, Null, C> {
  NCComponent({dynamic key, bool vif}) : super(null, key: key, vif: vif);
}
