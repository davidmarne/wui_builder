import 'dart:html';
import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';
import 'package:mockito/mockito.dart';
import 'test_component.dart';

class MockIdleDeadline extends Mock implements IdleDeadline {}

IdleDeadline aliveIdleDeadline() {
  final mock = new MockIdleDeadline();
  when(mock.timeRemaining()).thenReturn(2.0);
  return mock;
}

IdleDeadline completeIdleDeadline() {
  final mock = new MockIdleDeadline();
  when(mock.timeRemaining()).thenReturn(.1);
  return mock;
}

IdleDeadline completeAfterIdleDeadline(int after) {
  final mock = new MockIdleDeadline();
  int count = 0;
  when(mock.timeRemaining()).thenAnswer((_) {
    count++;
    return after >= count ? 2.0 : .1;
  });
  return mock;
}

void main() {
  group('async updates', () {
    DivElement host;
    TestComponent component;

    setUp(() {
      host = new DivElement();
      component = new TestComponent(new TestComponentProps()
        ..componentWillMount = expectComponentWillMount(1, 1)
        ..componentDidMount = expectComponentDidMount(1, 1)
        ..shouldComponentUpdate = failOnShouldComponentUpdate
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 1
        ..child = propStateText);

      render(component, host);
      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 1));
      expect(pendingIdleId, isNull);
    });

    test('correct lifecycle is called and text is rendered', () {
      component.updateStateIdle(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..child = propStateText);

      expect(activeUpdates.length, 1);
      expect(pendingIdleId, isNotNull);

      runIdle(aliveIdleDeadline());
      expect(activeUpdates.length, 0);
      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 2));
      expect(pendingIdleId, isNull);
    });

    test('update is short circuited when shouldComponentUpdate returns false',
        () {
      component.updateStateIdle(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate =
            expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..child = propStateText);

      expect(activeUpdates.length, 1);
      expect(pendingIdleId, isNotNull);

      runIdle(aliveIdleDeadline());
      expect(activeUpdates.length, 0);
      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 1));
      expect(pendingIdleId, isNull);
    });

    test('update is short circuited by new update', () {
      component.updateStateIdle(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = failOnShouldComponentUpdate
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount
        ..child = propStateText);

      expect(activeUpdates.length, 1);

      component.updateStateIdle(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 3)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..child = propStateText);

      expect(activeUpdates.length, 2);
      expect(activeUpdates[0].isCancelled, isTrue);
      expect(pendingIdleId, isNotNull);

      runIdle(aliveIdleDeadline());
      expect(activeUpdates.length, 0);
      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 3));
      expect(pendingIdleId, isNull);
    });

    test('update requeued if deadline has no time remaining', () {
      component.updateStateIdle(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = failOnShouldComponentUpdate
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount
        ..child = propStateText);

      expect(activeUpdates.length, 1);
      expect(pendingIdleId, isNotNull);

      runIdle(completeIdleDeadline());
      expect(activeUpdates.length, 1);
      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 1));
      expect(pendingIdleId, isNotNull);
    });
  });
}
