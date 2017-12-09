import 'functional.dart';

/// [BranchTest] is a function that decides given the props which [FunctionalComponent] to return
/// return true to take the left branch or false to take the right branch
typedef bool BranchTest<P>(P props);

/// [branch] returns the [left] or [right] [FunctionalComponent] depending on the outcome of [test]
///
///  Example
///  ```dart
///   class ExampleProps {
///     bool leftOrRight;
///     String leftBranchContent;
///     String rightBranchConent;
///   }
///
///   FunctionalComponent header<ExampleProps>(props) => Dom.h1()(props.leftBranchContent);
///
///   FunctionalComponent content<ExampleProps>(props) => Dom.div()(props.rightBranchConent);
///
///   FunctionalComponent content<ExampleProps>(props) => branch(
///     (ExampleProps props) => leftOrRight,
///     leftBranchContent,
///     rightBranchConent,
///   )
///   ```
FunctionalComponent<P> branch<P>(BranchTest<P> test,
        FunctionalComponent<P> left, FunctionalComponent<P> right) =>
    (props) => test(props) ? left(props) : right(props);
