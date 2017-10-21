import 'functional.dart';
import 'lifecycle.dart';

/// [pure] is a component enchancer that wraps you component in one with a pure should component
/// update function. This means your component will not render unless your props object != the last
/// props object. You should make sure if your props are not a primitive type that your props
/// object overrides == such that it returns true if and only if all of its values are different
///
///  Example
///  ```dart
///   class ExampleProps {
///     String foo;
///   }
///
///   FunctionalComponent purified = pure(baseComponent);
///
///   FunctionalComponent baseComponent(ExampleProps props) => Dom.div()(props.foo);
///
///   ```
FunctionalComponent<P> pure<P>(FunctionalComponent<P> baseComponent) =>
    lifecycle<P>(
      shouldComponentUpdate: (currentProps, nextProps) =>
          (currentProps != nextProps),
    )(baseComponent);
