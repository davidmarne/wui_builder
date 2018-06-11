import 'dart:html';

import '../../components.dart';
import '../../wui_builder.dart';
import 'functional.dart';

typedef OutterP RefMapper<InnerP, OutterP>(InnerP props, Node ref);

/// [withRef] with pass a ref to the dom element to `baseComponent`
ComponentEnhancer<InnerP, OutterP> withRef<InnerP, OutterP>(
        RefMapper<InnerP, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithRef<InnerP, OutterP>(new _WithRefProps()
          ..mapper = mapper
          ..baseProps = props
          ..baseComponent = baseComponent);

class _WithRefProps<InnerP, OutterP> {
  RefMapper<InnerP, OutterP> mapper;
  InnerP baseProps;
  FunctionalComponent<OutterP> baseComponent;
}

class _WithRef<InnerP, OutterP>
    extends PComponent<_WithRefProps<InnerP, OutterP>> {
  _WithRef(_WithRefProps<InnerP, OutterP> props) : super(props);

  @override
  VNode render() => props.baseComponent(props.mapper(props.baseProps, ref));
}
