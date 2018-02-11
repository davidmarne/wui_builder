import '../../components.dart';
import '../../wui_builder.dart';
import 'functional.dart';

typedef OutterP ContextMapper<InnerP, OutterP>(
    InnerP props, Map<String, dynamic> context);

/// [withContext] with pass a context to `baseComponent`
ComponentEnhancer<InnerP, OutterP> withContext<InnerP, OutterP>(
        ContextMapper<InnerP, OutterP> mapper) =>
    (baseComponent) =>
        (props) => new _WithContext<InnerP, OutterP>(new _WithContextProps()
          ..mapper = mapper
          ..baseProps = props
          ..baseComponent = baseComponent);

class _WithContextProps<InnerP, OutterP> {
  ContextMapper<InnerP, OutterP> mapper;
  InnerP baseProps;
  FunctionalComponent<OutterP> baseComponent;
}

class _WithContext<InnerP, OutterP>
    extends PComponent<_WithContextProps<InnerP, OutterP>> {
  _WithContext(_WithContextProps<InnerP, OutterP> props) : super(props);

  @override
  VNode render() => props.baseComponent(props.mapper(props.baseProps, context));
}
