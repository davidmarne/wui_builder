import 'dart:async';
import 'dart:html';

import 'package:meta/meta.dart';

import '../../components.dart';
import '../../vhtml.dart';
import '../../wui_builder.dart';

const historyContextKey = 'historyContextKey';

class HistoryProvider extends PComponent<VNode> {
  final _history = new History();

  HistoryProvider(VNode child) : super(child);

  @override
  Map<String, dynamic> getChildContext() =>
      <String, dynamic>{historyContextKey: _history};

  @override
  VNode render() => props;
}

History findHistoryInContext(Map<String, dynamic> context) {
  final dynamic history = context[historyContextKey];
  assert(history != null, 'no history found in context');
  assert(history is History,
      'value for historyContextKey found in context is not of type History');
  return history as History;
}

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
class RouterProps {
  final Iterable<Route> routes;
  // final UpdateType updateType;
  RouterProps(
    this.routes,
    /*this.updateType*/
  );
}

@immutable
class CurrentRoute {
  final Route route;
  final Map<String, String> params;
  CurrentRoute(this.route, this.params);
}

class Router extends Component<RouterProps, CurrentRoute> {
  StreamSubscription _onPathSub;
  History __history;

  Router(
    Iterable<Route> routes,
    /*{UpdateType updateType: UpdateType.animationFrame,}*/
  )
      : super(new RouterProps(
          routes, /*updateType*/
        ));

  History get _history => __history ?? findHistoryInContext(context);

  @override
  CurrentRoute getInitialState() => _getCurrentRouteForPath(_history.path);

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

  CurrentRoute _getCurrentRouteForPath(String path) {
    final pathParts = path.split('/');
    for (Route route in props.routes) {
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
      return new CurrentRoute(route, _paramsForRoute(pathParts, routeParts));
    }

    // we didn't find a matching route. use the default route.
    final defaultRoute =
        props.routes.firstWhere(_routeIsDefault, orElse: () => null);

    return defaultRoute != null ? new CurrentRoute(defaultRoute, {}) : null;
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

typedef VNode RouteVNodeFactory(Map<String, String> params);

@immutable
class Route {
  final String path;
  final RouteVNodeFactory componentFactory;
  final bool useAsDefault;

  Route(
    String path,
    this.componentFactory, {
    this.useAsDefault: false,
  })
      : this.path = path.startsWith('/') ? path : '/$path';
}
