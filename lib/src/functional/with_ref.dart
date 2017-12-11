import 'dart:html';

import '../../components.dart';
import '../../wui_builder.dart';
import 'functional.dart';

typedef OutterP RefMapper<InnerP, E extends Element, OutterP>(
    InnerP props, E ref);

/// [withRef] with pass a ref to the dom element to `baseComponent`
ComponentEnhancer<InnerP, OutterP> withRef<InnerP, E extends Element, OutterP>(
        RefMapper<InnerP, E, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithRef<InnerP, E, OutterP>(new _WithRefProps()
          ..mapper = mapper
          ..baseProps = props
          ..baseComponent = baseComponent);

class _WithRefProps<InnerP, E extends Element, OutterP> {
  RefMapper<InnerP, E, OutterP> mapper;
  InnerP baseProps;
  FunctionalComponent<OutterP> baseComponent;
}

class _WithRef<InnerP, E extends Element, OutterP>
    extends PComponent<_WithRefProps<InnerP, E, OutterP>> {
  _WithRef(_WithRefProps<InnerP, E, OutterP> props) : super(props);

  @override
  VNode render() =>
      props.baseComponent(props.mapper(props.baseProps, ref as E));
}
