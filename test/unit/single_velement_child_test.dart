import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';

import 'test_util/single_velement_child_test_component.dart';
import 'test_util/test_component_util.dart';
import 'test_util/test_idle_deadline.dart';
import 'test_util/testbed.dart';

void main() {
  group('single velement child test -', () {
    const testContextValue = 1234567890;

    DivElement host;
    SingleVElementChildComponent component;

    void verifier(int expectedPropValue, int expectedStateValue,
        int expectedNumPendingUpdates) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(
          host, expectedPropValue, expectedStateValue, testContextValue);
      expect(pendingIdleUpdates.length, expectedNumPendingUpdates);
      // if any updates are pending the pendingIdleId should also be set
      expect(pendingIdleId, expectedNumPendingUpdates > 0 ? isNotNull : isNull);
      expect(beforeAnimationFrameCallbacks.isEmpty, isTrue);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();

      // renders a test component
      component =
          new SingleVElementChildComponent(new SingleVElementChildProps()
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

    group('correct lifecycle is called and text is rendered -', () {
      test('sync', () {
        component.updateState(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
          ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
          ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
          ..componentWillUnmount = failOnComponentWillUnmount);

        // no update should have been queued
        // the rendered text should be updated
        verifier(1, 2, 0);
      });

      test('async - shouldAbort: true', () {
        component.updateStateIdle(
            new SingleVElementChildProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
              ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
              ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
              ..componentWillUnmount = failOnComponentWillUnmount,
            shouldAbort: true);

        // the update should be queued
        // the rendered text should not have been be updated yet
        verifier(1, 1, 1);

        // let the update process
        runIdle(aliveIdleDeadline());

        // the update should be removed from the queue
        // the rendered text should be updated
        verifier(1, 2, 0);
      });

      test('async - shouldAbort: false', () {
        component.updateStateIdle(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
          ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
          ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
          ..componentWillUnmount = failOnComponentWillUnmount);

        // the update should be queued
        // the rendered text should not have been be updated yet
        verifier(1, 1, 1);

        // let the update process
        runIdle(aliveIdleDeadline());

        // the update should be removed from the queue
        // the rendered text should be updated
        verifier(1, 2, 0);
      });
    });

    group(
        'update is short circuited when shouldComponentUpdate returns false -',
        () {
      test('sync', () {
        component.updateState(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate =
              expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
          ..componentWillUpdate = failOnComponentWillUpdate
          ..componentDidUpdate = failOnComponentDidUpdate
          ..componentWillUnmount = failOnComponentWillUnmount);

        // no update should have been queued
        // the rendered text should not have been updated
        verifier(1, 1, 0);
      });

      test('async - shouldAbort: true', () {
        component.updateStateIdle(
            new SingleVElementChildProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate =
                  expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
              ..componentWillUpdate = failOnComponentWillUpdate
              ..componentDidUpdate = failOnComponentDidUpdate
              ..componentWillUnmount = failOnComponentWillUnmount,
            shouldAbort: true);

        // the update should be queued
        // the rendered text should not have been be updated
        verifier(1, 1, 1);

        // let the update finish
        runIdle(aliveIdleDeadline());

        // the update should be removed from the queue
        // the rendered text should not have been be updated
        verifier(1, 1, 0);
      });

      test('async - shouldAbort: false', () {
        component.updateStateIdle(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate =
              expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
          ..componentWillUpdate = failOnComponentWillUpdate
          ..componentDidUpdate = failOnComponentDidUpdate
          ..componentWillUnmount = failOnComponentWillUnmount);

        // the update should be queued
        // the rendered text should not have been be updated
        verifier(1, 1, 1);

        // let the update finish
        runIdle(aliveIdleDeadline());

        // the update should be removed from the queue
        // the rendered text should not have been be updated
        verifier(1, 1, 0);
      });
    });

    group('multiple set states -', () {
      test('sync', () {
        component.updateState(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
          ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
          ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
          ..componentWillUnmount = failOnComponentWillUnmount);

        // no update should have been queued
        // the rendered text should have been updated
        verifier(1, 2, 0);

        component.updateState(new SingleVElementChildProps()
          ..componentWillMount = failOnComponentWillMount
          ..componentDidMount = failOnComponentDidMount
          ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 2, 3)
          ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
          ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
          ..componentWillUnmount = failOnComponentWillUnmount);

        // no update should have been queued
        // the rendered text should have been updated again
        verifier(1, 3, 0);
      });

      group('async -', () {
        group('first update had started - ', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateState(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // original update should remain queued, but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should not be executed even tho shouldAbort is false
              // since the proceeding update is sync
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, and process the initial call to update component
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateState(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // original update should remain queued, but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2 updates should be queued. The first should have been cancelled by the second
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should be executed with the state from the proceeding
              // update since it had not called the state setter yet
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);

              // let the first update finish, it should cancel the proceeding update
              runIdle(completeAfterIdleDeadline(2));
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });
          });
        });

        group('first update had not started -', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateState(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // idle update will be in the queue but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should not be executed even tho shouldAbort is false
              // since it had not started
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateState(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // idle update will be in the queue but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run an async update
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2nd update should not be queued since the first update had not started
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should not be executed even tho shouldAbort is false
              // since it had not started
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run an async update
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2nd update should not be queued since the first update had not started
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });
          });
        });

        group('first update had started and run updateComponent - ', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, and process only the component update
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should have only updated the first node
              verifier(1, 1, 1);

              // run a sync update
              component.updateState(
                new SingleVElementChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // the first update should be queued but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should still be cancelled since the second update is sync
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, and process only the component update
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateState(
                new SingleVElementChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // the first update should be queued but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 1);
              expect(pendingIdleUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(1, 3, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, and process only the component update
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 2, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              // the first update should be cancelled when the second is queued
              expect(pendingIdleUpdates[0].isCancelled, true);
              expect(pendingIdleUpdates[1].isCancelled, false);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });

            test('shouldAbort: false', () {
              // this update should be executed since shouldAbort is false
              component.updateStateIdle(
                  new SingleVElementChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, and process only the component update
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateStateIdle(new SingleVElementChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 2, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                ..componentWillUnmount = failOnComponentWillUnmount);

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              // first should be cancelled even tho shouldAbort is false
              // since it had not started
              expect(pendingIdleUpdates[0].isCancelled, false);
              expect(pendingIdleUpdates[1].isCancelled, false);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(1, 3, 0);
            });
          });
        });
      });
    });
  });
}
