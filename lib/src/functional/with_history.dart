import '../../components.dart';
import 'functional.dart';
import 'with_context.dart';

typedef OutterP HistoryMapper<InnerP, OutterP>(InnerP props, History history);

/// [withHistory] will transform the props with the [mapper] funtion provided before invoking `baseComponent`
/// the [mapper] function is passed an instance of `History`. This should only be
/// used if the component has an ancestor of type `HistoryProvider`
ComponentEnhancer<InnerP, OutterP> withHistory<InnerP, OutterP>(
        HistoryMapper<InnerP, OutterP> mapper) =>
    withContext(
        (props, context) => mapper(props, findHistoryInContext(context)));
