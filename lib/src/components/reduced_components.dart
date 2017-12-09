import '../../wui_builder.dart';

abstract class PComponent<P> extends Component<P, Null> {
  PComponent(P props) : super(props);
}

abstract class SComponent<S> extends Component<Null, S> {
  SComponent() : super(null);
}

abstract class CComponent<P, S, C> extends Component<P, S> {
  CComponent(P props) : super(props);

  String get contextKey;

  C get contextValue => context[contextKey] as C;
}

abstract class PCComponent<P, C> extends CComponent<P, Null, C> {
  PCComponent(P props) : super(props);
}

abstract class SCComponent<S, C> extends CComponent<Null, S, C> {
  SCComponent() : super(null);
}
