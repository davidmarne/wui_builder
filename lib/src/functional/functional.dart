import '../../wui_builder.dart';

/// [FunctionalComponent] is a function that given [props] yields a [VNode]

typedef VNode FunctionalComponent<P>(P props);

/// [ComponentEnhancer] is function that given a [FunctionalComponent] that accepts [OutterP] props
/// and returns a [FunctionalComponent] that accepts [InnerP] props
typedef FunctionalComponent<InnerP> ComponentEnhancer<InnerP, OutterP>(
    FunctionalComponent<OutterP> baseComponent);

/// [PropMapper] takes a props object of type [P] and returns a props object of type [T]
typedef T PropMapper<P, T>(P props);

typedef EventHandler<T> EventHandlerFactory<P, T>(P p);

/// memoizes an event handler
///
/// final onClick = createEventHandler<int, Event>((p) => (e) {
///    // do something
/// });
EventHandlerFactory<P, E> createEventHandler<P, E>(
    EventHandlerFactory<P, E> eventHandlerFactory) {
  P prevProps;
  EventHandler<E> prevResult;
  bool isInitial = true;

  return (p) {
    if (!isInitial && p == prevProps) {
      return prevResult;
    } else {
      prevProps = p;
      isInitial = false;
      return prevResult = eventHandlerFactory(p);
    }
  };
}
