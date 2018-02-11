import 'dart:html' hide History;

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/wui_builder.dart';

class TestRoutes {
  static const routeA = '/route_a';
  static const routeB = '/route_b';
  static const routeC = '/route_c/:pathvar';
}

void expectRenderedOutput(Element host, String expectedContent) {
  expect(host.children.length, 1);
  expect(host.children.first.text, expectedContent);
}

// RouterComponent is a component that conditionally renders
// one of 3 components, based on the current route
class RouterComponent extends NComponent {
  @override
  VNode render() => new HistoryProvider(
        new Router(routes: [
          new Route(
            TestRoutes.routeA,
            (params) => new RouteAComponent(),
            useAsDefault:
                true, // if no route is matched this route will be used
          ),
          new Route(
            TestRoutes.routeB,
            (params) => new RouteBComponent(),
          ),
          new Route(
            TestRoutes.routeC,
            // routeC has a param, pathvar, which is read from the params
            // map and pass to RouteCComponent via props
            (params) => new RouteCComponent(params['pathvar']),
          ),
        ]),
      );

  History _history;
  History get history =>
      _history ?? findHistoryInContext((child as Component).context);
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
