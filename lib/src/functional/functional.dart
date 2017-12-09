import '../../wui_builder.dart';

/// [FunctionalComponent] is a function that given [props] yields a [VNode]

typedef VNode FunctionalComponent<P>(P props);

/// [ComponentEnhancer] is function that given a [FunctionalComponent] that accepts [OutterP] props
/// and returns a [FunctionalComponent] that accepts [InnerP] props
typedef FunctionalComponent<InnerP> ComponentEnhancer<InnerP, OutterP>(
    FunctionalComponent<OutterP> baseComponent);

/// [PropMapper] takes a props object of type [P] and returns a props object of type [T]
typedef T PropMapper<P, T>(P props);
