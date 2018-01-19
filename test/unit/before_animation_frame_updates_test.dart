import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';

import 'test_util/before_animation_frame_test_component.dart';
import 'test_util/test_component_util.dart';
import 'test_util/testbed.dart';

void main() {
  group('before animation frame updates test -', () {
    const testContextValue = 1234567890;

    DivElement host;
    BeforeAnimationFrameComponent component;

    void verifier(int expectedPropValue, int expectedStateValue,
        int expectedNumPendingUpdates) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(
          host, expectedPropValue, expectedStateValue, testContextValue);
      expect(pendingAnimationFrameUpdates.length, expectedNumPendingUpdates);
      // if any updates are pending the pendingAnimationFrameId should also be set
      expect(pendingAnimationFrameId, isNotNull);
      expect(beforeAnimationFrameCallbacks.isEmpty, isFalse);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();

      // renders a test component
      component =
          new BeforeAnimationFrameComponent(new BeforeAnimationFrameProps()
            ..componentWillMount = expectComponentWillMount(1, 1)
            ..componentDidMount = expectComponentDidMount(1, 1)
            ..shouldComponentUpdate = failOnShouldComponentUpdate
            ..componentWillUpdate = failOnComponentWillUpdate
            ..componentDidUpdate = failOnComponentDidUpdate
            ..componentWillUnmount = failOnComponentWillUnmount
            ..context = testContextValue
            ..actualValue = 1);

      render(component, host);
      verifier(1, 1, 0);
    });

    test('correct lifecycle is called and text is rendered', () {
      component.setExpectation(new BeforeAnimationFrameProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount);

      // no udate should be queued
      // the renedered text shouldn't be updated
      verifier(1, 1, 0);

      onAnimationFrame(0);

      // no update should have been queued
      // the rendered text should be updated
      verifier(1, 2, 0);
    });

    test('update is short circuited when shouldComponentUpdate returns false',
        () {
      component.setExpectation(new BeforeAnimationFrameProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate =
            expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount);

      // udate should be queued
      // the renedered text shouldn't be updated
      verifier(1, 1, 0);

      onAnimationFrame(0);

      // no update should have been queued
      // the rendered text should not have been updated
      verifier(1, 1, 0);
    });

    test('removes callback on unmount', () {
      expect(beforeAnimationFrameCallbacks.isEmpty, isFalse);
      component.state.componentWillUnmount = expectComponentWillUnmount(1, 1);
      unmount(component);
      expect(beforeAnimationFrameCallbacks.isEmpty, isTrue);
    });
  });
}
