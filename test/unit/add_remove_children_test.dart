import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';

import 'test_util/add_remove_children_component.dart';
import 'test_util/test_idle_deadline.dart';
import 'test_util/testbed.dart';

void main() {
  group('add/remove children test -', () {
    const initalNumChildren = 5;

    DivElement host;
    AddRemoveChildrenComponent component;

    void verifier(int numExpected, int expectedNumPendingUpdates) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(host, numExpected);
      expect(pendingIdleUpdates.length, expectedNumPendingUpdates);
      // if any updates are pending the pendingIdleId should also be set
      expect(pendingIdleId, expectedNumPendingUpdates > 0 ? isNotNull : isNull);
      expect(beforeAnimationFrameCallbacks.isEmpty, isTrue);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();

      // renders a test component
      component = new AddRemoveChildrenComponent(0);
      render(component, host);
      verifier(0, 0);
    });

    test('sync', () {
      component.updateState(5);
      verifier(5, 0);
      component.updateState(3);
      verifier(3, 0);
      component.updateState(0);
      verifier(0, 0);
    });
  });
}
