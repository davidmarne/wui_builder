import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

import 'test_util/router_test_component.dart';
import 'test_util/testbed.dart';

void main() {
  group('router -', () {
    DivElement host;
    RouterComponent component;

    void verifier(String expectedContent) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(host, expectedContent);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();

      // renders a test component
      component = new RouterComponent();
      render(component, host);
      // expect(window.location.pathname, '');
      verifier('route a component');
    });

    test('push', () async {
      // component.history.push(TestRoutes.routeA);
      // await window.animationFrame;
      // expect(window.location.pathname, TestRoutes.routeA);
      // verifier('route a component');

      // component.history.push(TestRoutes.routeB);
      // await window.animationFrame;
      // expect(window.location.pathname, TestRoutes.routeB);
      // verifier('route b component');

      // var varRoute = TestRoutes.routeC.replaceFirst(':pathvar', '1');
      // component.history.push(varRoute);
      // await window.animationFrame;
      // expect(window.location.pathname, varRoute);
      // verifier('route c component. pathvar: 1');

      // varRoute = TestRoutes.routeC.replaceFirst(':pathvar', '2');
      // component.history.push(varRoute);
      // await window.animationFrame;
      // expect(window.location.pathname, varRoute);
      // verifier('route c component. pathvar: 2');
    });
  });
}
