import 'functional.dart';

/// [withProps] will transform the props with the [mapper] funtion provider before invokeing `baseComponent`
///
/// Example
///  ```dart
///   class ExampleProps {
///     String name;
///   }
///
///   class MappedExampleProps {
///     String message;
///   }
///
///   FunctionalComponent<ExampleProps> mappedMessage = withProps<ExampleProps, MappedExampleProps>(
///     (ExampleProps props) => new MappedExampleProps()..message='Hello $name',
///   )(message);
///
///   FunctionalComponent<MappedExampleProps> message(MappedExampleProps props) => Dom.h1()(props.message);
///   ```
ComponentEnhancer<InnerP, OutterP> withProps<InnerP, OutterP>(
        PropMapper<InnerP, OutterP> mapper) =>
    (baseComponent) => (props) => baseComponent(mapper(props));
