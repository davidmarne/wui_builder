// import 'dart:html';
//
// import 'package:built_redux/built_redux.dart';
//
// Middleware<App, AppBuilder, AppActions> createRouterMiddleware(
//     AppActions actions) {
//   window.onPopState.listen((_) {
//     actions.setRoute(window.history.state);
//   });
//
//   return (new MiddlewareBuilder<App, AppBuilder, AppActions>()
//         ..add(AppActionNames.setRoute, _setRoute))
//       .build();
// }
//
// void _setRoute(MiddlewareApi<Counter, CounterBuilder, CounterActions> api,
//     ActionHandler next, Action<int> action) {
//   window.history.replaceState('/${action.payload}');
// }
