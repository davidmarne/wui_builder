import 'dart:html' hide History;
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

class ExampleRoutes {
  static const routeA = '/routing/route_a';
  static const routeB = '/routing/route_b';
  // routeC contains a variable, pathvar, in the route
  static const routeC = '/routing/route_c/:pathvar';
}

// RoutingExample is a component that conditionally renders
// one of 3 components, based on the current route
class RoutingExample extends NComponent {
  @override
  VNode render() => new Vdiv()
    ..children = [
      _navBar(),
      _routeContent(),
    ];

  // Router is used to conditionally render components based on
  // the current route.
  //
  // The Router component takes an Iterable of Routes. A Route
  // defines a path to match on and a component factory to be
  // invoked when the corresponding path is matched.
  VNode _routeContent() => new Router(routes: [
        new Route(
          path: ExampleRoutes.routeA,
          componentFactory: (params) => new RouteAComponent(),
          useAsDefault: true, // if no route is matched this route will be used
        ),
        new Route(
          path: ExampleRoutes.routeB,
          componentFactory: (params) => new RouteBComponent(),
        ),
        new Route(
          path: ExampleRoutes.routeC,
          // routeC has a param, pathvar, which is read from the params
          // map and pass to RouteCComponent via props
          componentFactory: (params) => new RouteCComponent(params['pathvar']),
        ),
      ]);

  VNode _navBar() => new Vnav()
    ..className = 'navbar'
    ..children = [
      new Vdiv()
        ..className = 'navbar-menu'
        ..children = [
          new Vdiv()
            ..className = 'navbar-start'
            ..children = [
              new Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteAClicked
                ..text = 'go to /routing/route_a',
              new Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteBClicked
                ..text = 'go to /routing/route_b',
              new Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteC1Clicked
                ..text = 'go to /routing/route_c/1',
              new Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteC2Clicked
                ..text = 'go to /routing/route_c/2'
            ]
        ]
    ];

  void _onRouteAClicked(Event e) {
    _updateRoute(ExampleRoutes.routeA);
  }

  void _onRouteBClicked(Event e) {
    _updateRoute(ExampleRoutes.routeB);
  }

  void _onRouteC1Clicked(Event e) {
    _updateRoute(ExampleRoutes.routeC.replaceFirst(':pathvar', '1'));
  }

  void _onRouteC2Clicked(Event e) {
    _updateRoute(ExampleRoutes.routeC.replaceFirst(':pathvar', '2'));
  }

  // History is added to the context by wrapping including a HistoryProvider
  // above in the component tree (not shown in example). If a HistoryProvider
  // is not a parent in the component tree, Router cannot be used.
  History __history;
  History get _history => __history ?? findHistoryInContext(context);

  void _updateRoute(String route) {
    _history.push(route);
  }
}

class RouteAComponent extends NComponent {
  @override
  VNode render() => new Vdiv()..text = 'route a component';
}

class RouteBComponent extends NComponent {
  @override
  VNode render() => new Vdiv()..text = 'route b component';
}

class RouteCComponent extends PComponent<String> {
  RouteCComponent(String props) : super(props);

  @override
  VNode render() => new Vdiv()..text = 'route c component. pathvar: $props';
}
