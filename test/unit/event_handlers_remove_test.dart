import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

import 'test_util/event_handlers_remove_test_component.dart';
import 'test_util/testbed.dart';

void main() {
  group('event handler remove/add test -', () {
    DivElement host;
    EventHandlerTestComponent component;

    void verifier(bool enabled, int numExpectedClicks) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(host, enabled, numExpectedClicks);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();

      // renders a test component
      component = new EventHandlerTestComponent();

      render(component, host);
      // all should have initial state of 0
      verifier(true, 0);
    });

    test('event handler remove/add test -', () {
      host.children.first.click();
      verifier(true, 1);

      component.updateClickEnabled();
      verifier(false, 1);
      host.children.first.click();
      verifier(false, 1);

      component.updateClickEnabled();
      verifier(true, 1);
      host.children.first.click();
      verifier(true, 2);
    });
  });
}
