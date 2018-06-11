import 'dart:async';
import 'dart:html';

import 'package:meta/meta.dart';

import '../../components.dart';
import '../../vhtml.dart';
import '../../wui_builder.dart';

const historyContextKey = 'historyContextKey';

/// [HistoryProvider] creates an instance of `History` and adds
/// it to context. This component should only be used once per app
/// and should exist at the top of the component tree.
class HistoryProvider extends PComponent<VNode> {
  final History _history;

  HistoryProvider({
    @required VNode child,
    History history,
  })  : _history = history ?? new History(),
        super(child);

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{historyContextKey: _history};

  @override
  VNode render() => props;
}

/// [findHistoryInContext] finds the `History` instance that gets
/// added to context by a `HistoryProvider`
History findHistoryInContext(Map<String, dynamic> context) {
  final dynamic history = context[historyContextKey];
  assert(history != null, 'no history found in context');
  assert(history is History,
      'value for historyContextKey found in context is not of type History');
  return history as History;
}

/// [History] is an api for reading and interacting with your applications url.
/// It uses pushState to update the url.
class History {
  final _pathChangeController = new StreamController<String>.broadcast();
  StreamSubscription _popStateSub;
  String _path = window.location.pathname;

  History() {
    _popStateSub = window.onPopState.listen(_onPopState);
  }

  Stream<String> get onPathChange => _pathChangeController.stream;
  void goForward() => window.history.go(1);
  void goBack() => window.history.go(-1);
  void go(int n) => window.history.go(n);
  void push(String path) {
    _path = path.startsWith('/') ? path : '/$path';
    window.history.pushState({'path': _path}, '', _path);
    _pathChangeController.add(_path);
  }

  void replace(String path) {
    _path = path.startsWith('/') ? path : '/$path';
    window.location.replace(_path);
    _pathChangeController.add(_path);
  }

  String get path => _path;

  void dispose() {
    _popStateSub.cancel();
  }

  void _onPopState(PopStateEvent e) {
    _path = window.location.pathname;
    _pathChangeController.add(_path);
  }
}

@immutable
class _CurrentRoute {
  final Route route;
  final Map<String, String> params;
  const _CurrentRoute(this.route, this.params);
}

/// [Router] is a component that will render the result of a given `Route`'s
/// componentFactory when the current url's path matches the `Route`'s path.
class Router extends Component<Iterable<Route>, _CurrentRoute> {
  StreamSubscription _onPathSub;
  History __history;

  Router({
    @required Iterable<Route> routes,
    dynamic key,
  }) : super(routes, key: key);

  History get _history => __history ?? findHistoryInContext(context);

  @override
  _CurrentRoute getInitialState() => _getCurrentRouteForPath(_history.path);

  @override
  void componentDidMount() {
    _onPathSub = _history.onPathChange.listen(_onPathChange);
  }

  @override
  void componentWillUnmount() {
    _onPathSub.cancel();
  }

  @override
  VNode render() => state != null
      ? state.route.componentFactory(state.params)
      : _routeNotFound();

  void _onPathChange(String path) {
    setStateOnAnimationFrame((_, __) => _getCurrentRouteForPath(path));
  }

  _CurrentRoute _getCurrentRouteForPath(String path) {
    final pathParts = path.split('/');
    for (Route route in props) {
      final routeParts = route.path.split('/');
      if (pathParts.length != routeParts.length) continue;

      var matching = true;
      for (var i = 0; i < pathParts.length; i++)
        if (!routeParts[i].startsWith(':') && routeParts[i] != pathParts[i]) {
          matching = false;
          break;
        }

      if (!matching) continue;

      // we have found our route
      final params = <String, String>{};
      for (var i = 0; i < pathParts.length; i++)
        if (routeParts[i].startsWith(':'))
          params[routeParts[i].replaceFirst(':', '')] = pathParts[i];
      return new _CurrentRoute(route, _paramsForRoute(pathParts, routeParts));
    }

    // we didn't find a matching route. use the default route.
    final defaultRoute = props.firstWhere(_routeIsDefault, orElse: () => null);

    return defaultRoute != null ? new _CurrentRoute(defaultRoute, {}) : null;
  }

  Map<String, String> _paramsForRoute(
      Iterable<String> pathParts, Iterable<String> routeParts) {
    final params = <String, String>{};
    for (var i = 0; i < pathParts.length; i++)
      if (routeParts.elementAt(i).startsWith(':'))
        params[routeParts.elementAt(i).replaceFirst(':', '')] =
            pathParts.elementAt(i);
    return params;
  }

  bool _routeIsDefault(Route route) => route.useAsDefault;

  VNode _routeNotFound() => new Vdiv();
}

/// [RouteVNodeFactory] is a factory that returns a given component
/// that pairs to a given path. The factory functions is called
///  with `params`, which is a map of variables found in the path.
///
/// For example, if a `Route`s path is /foo/:var1/:var2 and the
/// current url is /foo/bar/baz, then the params map would be
/// {var1: 'bar', var2: 'baz'}
typedef VNode RouteVNodeFactory(Map<String, String> params);

/// [Route] defines a `path` and a `componentFactory` that
/// can be used by the `Router` to render the result of a given `Route`'s
/// componentFactory when the current url's path matches the `Route`'s path.
@immutable
class Route {
  final String path;
  final RouteVNodeFactory componentFactory;

  /// useAsDefault should be set to true if you would like the router
  /// to use this Route when the current route does not match any
  /// `Route`s provided to the `Router`
  final bool useAsDefault;

  Route({
    @required String path,
    @required this.componentFactory,
    this.useAsDefault: false,
  }) : this.path = path.startsWith('/') ? path : '/$path';
}
