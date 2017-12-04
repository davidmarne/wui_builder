import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';

import 'test_util/abstract_test_component.dart';
import 'test_util/component_child_test_component.dart';
import 'test_util/test_component_util.dart';
import 'test_util/test_idle_deadline.dart';

void main() {
  group('component child test -', () {
    const testContextValue = 1234567890;

    DivElement host;
    ComponentChildComponent component;

    void verifier(int expectedPropValue, int expectedStateValue,
        int expectedNumPendingUpdates) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(
          host, expectedPropValue, expectedStateValue, testContextValue);
      expect(activeUpdates.length, expectedNumPendingUpdates);
      // if any updates are pending the pendingIdleId should also be set
      expect(pendingIdleId, expectedNumPendingUpdates > 0 ? isNotNull : isNull);
    }

    setUp(() {
      activeUpdates = [];
      pendingIdleId = null;
      host = new DivElement();

      // renders a test component
      component = new ComponentChildComponent(
        new ComponentChildProps()
          ..componentWillMount = expectComponentWillMount(1, 1)
          ..componentDidMount = expectComponentDidMount(1, 1)
          ..shouldComponentUpdate = failOnShouldComponentUpdate
          ..componentWillUpdate = failOnComponentWillUpdate
          ..componentDidUpdate = failOnComponentDidUpdate
          ..componentWillUnmount = failOnComponentWillUnmount
          ..context = testContextValue
          ..actualValue = 1
          ..nestedComponentProps = (new TestComponentProps()
            ..componentWillMount = expectComponentWillMount(1, 1)
            ..componentDidMount = expectComponentDidMount(1, 1)
            ..shouldComponentUpdate = failOnShouldComponentUpdate
            ..componentWillUpdate = failOnComponentWillUpdate
            ..componentDidUpdate = failOnComponentDidUpdate
            ..componentWillUnmount = failOnComponentWillUnmount),
      );

      render(component, host);
      verifier(1, 1, 0);
    });

    group('correct lifecycle is called and text is rendered -', () {
      group('parent update -', () {
        test('sync', () {
          component.updateState(
            new ComponentChildProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
              ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
              ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
              ..componentWillUnmount = failOnComponentWillUnmount
              ..nestedComponentProps = (new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 2, 1, 1)
                ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 1)
                ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 1)
                ..componentWillUnmount = failOnComponentWillUnmount),
          );

          // no update should have been queued
          // the rendered text should be updated
          verifier(2, 1, 0);
        });

        test('async - shouldAbort: true', () {
          component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 1)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 1)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 1)
                  ..componentWillUnmount = failOnComponentWillUnmount),
              shouldAbort: true);

          // the update should be queued
          // the rendered text should not have been be updated yet
          verifier(1, 1, 1);

          // let the update process
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should be updated
          verifier(2, 1, 0);
        });

        test('async - shouldAbort: false', () {
          component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 1)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 1)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 1)
                  ..componentWillUnmount = failOnComponentWillUnmount),
              shouldAbort: false);

          // the update should be queued
          // the rendered text should not have been be updated yet
          verifier(1, 1, 1);

          // let the update process
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should be updated
          verifier(2, 1, 0);
        });
      });

      group('child update -', () {
        test('sync', () {
          component.child.updateState(
            new TestComponentProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
              ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
              ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
              ..componentWillUnmount = failOnComponentWillUnmount,
          );

          // no update should have been queued
          // the rendered text should be updated
          verifier(1, 2, 0);
        });

        test('async - shouldAbort: true', () {
          component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
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
          component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
              shouldAbort: false);

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
    });

    group(
        'update is short circuited when shouldComponentUpdate returns false -',
        () {
      group('parent update -', () {
        test('sync', () {
          component.updateState(
            new ComponentChildProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate =
                  expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
              ..componentWillUpdate = failOnComponentWillUpdate
              ..componentDidUpdate = failOnComponentDidUpdate
              ..componentWillUnmount = failOnComponentWillUnmount
              ..nestedComponentProps = (new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate = failOnShouldComponentUpdate
                ..componentWillUpdate = failOnComponentWillUpdate
                ..componentDidUpdate = failOnComponentDidUpdate
                ..componentWillUnmount = failOnComponentWillUnmount),
          );

          // no update should have been queued
          // the rendered text should not have been updated
          verifier(1, 1, 0);
        });

        test('async - shouldAbort: true', () {
          component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
                ..componentWillUpdate = failOnComponentWillUpdate
                ..componentDidUpdate = failOnComponentDidUpdate
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
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
          component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
                ..componentWillUpdate = failOnComponentWillUpdate
                ..componentDidUpdate = failOnComponentDidUpdate
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
              shouldAbort: false);

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

      group('child update -', () {
        test('sync', () {
          component.child.updateState(
            new TestComponentProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate =
                  expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
              ..componentWillUpdate = failOnComponentWillUpdate
              ..componentDidUpdate = failOnComponentDidUpdate
              ..componentWillUnmount = failOnComponentWillUnmount,
          );

          // no update should have been queued
          // the rendered text should not have been updated
          verifier(1, 1, 0);
        });

        test('async - shouldAbort: true', () {
          component.child.updateStateIdle(
              new TestComponentProps()
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
          component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
                ..componentWillUpdate = failOnComponentWillUpdate
                ..componentDidUpdate = failOnComponentDidUpdate
                ..componentWillUnmount = failOnComponentWillUnmount,
              shouldAbort: false);

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
    });

    group('multiple set states -', () {
      test('sync', () {
        component.updateState(
          new ComponentChildProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..nestedComponentProps = (new TestComponentProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate = expectShouldComponentUpdate(1, 2, 1, 1)
              ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 1)
              ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 1)
              ..componentWillUnmount = failOnComponentWillUnmount),
        );

        // no update should have been queued
        // the rendered text should have been updated
        verifier(2, 1, 0);

        component.updateState(
          new ComponentChildProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 2, 3)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..nestedComponentProps = (new TestComponentProps()
              ..componentWillMount = failOnComponentWillMount
              ..componentDidMount = failOnComponentDidMount
              ..shouldComponentUpdate = expectShouldComponentUpdate(2, 3, 1, 1)
              ..componentWillUpdate = expectComponentWillUpdate(2, 3, 1, 1)
              ..componentDidUpdate = expectComponentDidUpdate(2, 3, 1, 1)
              ..componentWillUnmount = failOnComponentWillUnmount),
        );

        // no update should have been queued
        // the rendered text should have been updated again
        verifier(3, 1, 0);
      });

      group('async -', () {
        group('first update had started - ', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
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
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // original update should remain queued, but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // this update should not be executed even tho shouldAbort is false
              // since the proceeding update is sync
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              // it should run after completing the pending idle update
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // original update should remain queued, but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2 updates should be queued. The first should have been cancelled by the second
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // run a async update, will run all lifecycle since shouldAbort is false
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
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
              // it will run with the follwing state once, but will be handled by the original
              // update and the proceeding update will be cancelled
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);

              // let the first updates call updateComponent, it should cancel the second
              runIdle(completeAfterIdleDeadline(2));
              verifier(1, 1, 2);
              expect(activeUpdates[0].isCancelled, false);
              expect(activeUpdates[1].isCancelled, true);

              // let the first updates finish
              runIdle(completeAfterIdleDeadline(1));
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, true);

              // no updates should remain queued after running again
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });
        });

        group('first update had not started - ', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
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
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // idle update will be in the queue but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // run a async update, will not run lifecycle even tho shouldAbort is false
              // since it had not started
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              // it should run after completing the pending idle update
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the original update should remained queued, but should be cancelled
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, true);
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2nd update should not be queued since the first update had not started
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // run a async update, will run all lifecycle since shouldAbort is false
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              // it will run with the follwing state once, but will be handled by the original
              // update and the proceeding update will be cancelled
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2nd update should not be queued since the first update had not started
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the updates finsh
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });
        });

        group('first update had started and run updateComponent - ', () {
          group('second update is sync -', () {
            test('shouldAbort: true', () {
              // this update should only execute lifecycle for first component
              // since it will be cancelled before reaching second
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, run the begining of component
              // lifecycle, but not reach the nested component
              // or the vElements
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the first update should be queued but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // this update should still be cancelled since the second update is sync
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, run the begining of component
              // lifecycle, but not reach the nested component
              // or the vElements
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a sync update
              // it should run after completing the pending idle update
              component.updateState(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the first update should be queued but cancelled
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });

          group('second update is async -', () {
            test('shouldAbort: true', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, run the begining of component
              // lifecycle, but not reach the nested component
              // or the vElements
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              // the first update should be cancelled when the second is queued
              expect(activeUpdates[0].isCancelled, true);
              expect(activeUpdates[1].isCancelled, false);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(3, 1, 0);
            });

            test('shouldAbort: false', () {
              // run a async update, will run all lifecycle since shouldAbort is false
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate =
                          expectShouldComponentUpdate(1, 2, 1, 1)
                      ..componentWillUpdate =
                          expectComponentWillUpdate(1, 2, 1, 1)
                      ..componentDidUpdate =
                          expectComponentDidUpdate(1, 2, 1, 1)
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, run the begining of component
              // lifecycle, but not reach the nested component
              // or the vElements
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // run a async update
              // it will run with the follwing state after the proceeding update
              component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 2, 3)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(2, 3, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(2, 3, 1, 1)
                    ..componentDidUpdate = expectComponentDidUpdate(2, 3, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
              );

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 2);
              // first should be cancelled even tho shouldAbort is false
              // since it had not started
              expect(activeUpdates[0].isCancelled, false);
              expect(activeUpdates[1].isCancelled, false);

              // let the first update finish
              // the second should still be queued
              runIdle(completeAfterIdleDeadline(2));
              verifier(2, 1, 1);
              expect(activeUpdates[0].isCancelled, false);

              // no updates should remain queued after running again
              runIdle(aliveIdleDeadline());
              verifier(3, 1, 0);
            });
          });
        });
      });
    });
    group('async parent update followed by child update -', () {
      group('parent has started -', () {
        group('parent update has called update on child already -', () {
          group('child update is sync -', () {
            test('shouldAbort: true', () {
              // this parent should be executed, the child will not
              // as it will call the childs pending state setter
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate =
                          expectShouldComponentUpdate(1, 2, 2, 2)
                      ..componentWillUpdate =
                          expectComponentWillUpdate(1, 2, 2, 2)
                      ..componentDidUpdate =
                          expectComponentDidUpdate(1, 2, 2, 2)
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateState(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // only child should have updated
              verifier(1, 2, 1);

              // let the first update finish
              runIdle(aliveIdleDeadline());

              verifier(2, 2, 0);
            });
            test('shouldAbort: false', () {
              // this parent should be executed, the child will not
              // as it will call the childs pending state setter
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate =
                          expectShouldComponentUpdate(1, 2, 2, 2)
                      ..componentWillUpdate =
                          expectComponentWillUpdate(1, 2, 2, 2)
                      ..componentDidUpdate =
                          expectComponentDidUpdate(1, 2, 2, 2)
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateState(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // only child should have updated
              verifier(1, 2, 1);

              // let the first update finish
              runIdle(aliveIdleDeadline());

              verifier(2, 2, 0);
            });
          });
          group('child update is async -', () {
            test('shouldAbort: true', () {
              // this parent should be executed, the child will not
              // as it will call the childs pending state setter
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // child and parent update is still pending
              verifier(1, 1, 2);

              // let both updates process
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
            test('shouldAbort: false', () {
              // this parent should be executed, the child will not
              // as it will call the childs pending state setter
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // child and parent update is still pending
              verifier(1, 1, 2);

              // let both updates process
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
          });
        });

        group('parent update has not started -', () {
          group('child update is sync -', () {
            test('shouldAbort: true', () {
              // this parent and child will be exectued after the child sync setState
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate =
                          expectShouldComponentUpdate(1, 2, 2, 2)
                      ..componentWillUpdate =
                          expectComponentWillUpdate(1, 2, 2, 2)
                      ..componentDidUpdate =
                          expectComponentDidUpdate(1, 2, 2, 2)
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateState(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // child should have updated and parent should be pending
              verifier(1, 2, 1);

              // let update process
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
            test('shouldAbort: false', () {
              // this parent and child will be exectued after the child sync setState
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate =
                          expectShouldComponentUpdate(1, 2, 2, 2)
                      ..componentWillUpdate =
                          expectComponentWillUpdate(1, 2, 2, 2)
                      ..componentDidUpdate =
                          expectComponentDidUpdate(1, 2, 2, 2)
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateState(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // child should have updated and parent should be pending
              verifier(1, 2, 1);

              // let update process
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
          });
          group('child update is async -', () {
            test('shouldAbort: true', () {
              // the child update will use the pending state setter
              // from the proceeding idle update
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // nothing should have updated yet
              verifier(1, 1, 2);

              // let update process
              runIdle(completeAfterIdleDeadline(3));

              // both child and parent should have updated
              // proceeding child update should be queued but cancelled
              verifier(2, 2, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
            test('shouldAbort: false', () {
              // the child update will use the pending state setter
              // from the proceeding idle update
              component.updateStateIdle(
                  new ComponentChildProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..nestedComponentProps = (new TestComponentProps()
                      ..componentWillMount = failOnComponentWillMount
                      ..componentDidMount = failOnComponentDidMount
                      ..shouldComponentUpdate = failOnShouldComponentUpdate
                      ..componentWillUpdate = failOnComponentWillUpdate
                      ..componentDidUpdate = failOnComponentDidUpdate
                      ..componentWillUnmount = failOnComponentWillUnmount),
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(1, 1, 1);

              // when child updates it is still unaware
              // of the processing parent update
              component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
              );

              // nothing should have updated yet
              verifier(1, 1, 2);

              // let update process
              runIdle(completeAfterIdleDeadline(3));

              // both child and parent should have updated
              // proceeding child update should be queued but cancelled
              verifier(2, 2, 1);
              expect(activeUpdates[0].isCancelled, isTrue);

              // let it finish
              runIdle(aliveIdleDeadline());

              // both child and parent should have updated
              verifier(2, 2, 0);
            });
          });
        });
      });

      group(
          'async parent has updated the parent but not its child when child update occurs -',
          () {
        group('child update is sync -', () {
          test('shouldAbort: true', () {
            // this parent should be executed, the child will not
            // as it will call the childs pending state setter
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 2, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 2, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: true);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update start, but not process anything
            runIdle(completeAfterIdleDeadline(1));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is still unaware
            // of the processing parent update
            component.child.updateState(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // only child updated
            verifier(1, 2, 1);

            // let the update finish
            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // this parent should be executed, the child will not
            // as it will call the childs pending state setter
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 2, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 2, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: false);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update start, but not process anything
            runIdle(completeAfterIdleDeadline(1));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is still unaware
            // of the processing parent update
            component.child.updateState(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // only child updated
            verifier(1, 2, 1);

            // let the update finish
            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
        });
        group('child update is async -', () {
          test('shouldAbort: true', () {
            // this parent should be executed, the child will not
            // as it will call the childs pending state setter
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: true);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update start, but not process anything
            runIdle(completeAfterIdleDeadline(1));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is still unaware
            // of the processing parent update
            component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // let update process
            runIdle(completeAfterIdleDeadline(2));

            // both child and parent should have updated
            // proceeding child update should be queued but cancelled
            verifier(2, 2, 1);
            expect(activeUpdates[0].isCancelled, isTrue);

            // let it finish
            runIdle(aliveIdleDeadline());

            // both child and parent should have updated
            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // this parent should be executed, the child will not
            // as it will call the childs pending state setter
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: false);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update start, but not process anything
            runIdle(completeAfterIdleDeadline(1));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is still unaware
            // of the processing parent update
            component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // let update process
            runIdle(completeAfterIdleDeadline(2));

            // both child and parent should have updated
            // proceeding child update should be queued but cancelled
            verifier(2, 2, 1);
            expect(activeUpdates[0].isCancelled, isTrue);

            // let it finish
            runIdle(aliveIdleDeadline());

            // both child and parent should have updated
            verifier(2, 2, 0);
          });
        });
      });

      group(
          'async parent has updated the child but not finished when child update occurs -',
          () {
        group('child update is sync -', () {
          test('shouldAbort: true', () {
            // the child update will not be finished since proceeding sync setState
            // cancels it
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 1, 1)
                    ..componentDidUpdate = failOnShouldComponentUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: true);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update process both components, but not the vElement
            runIdle(completeAfterIdleDeadline(2));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is aware
            // of the processing parent update
            component.child.updateState(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(2, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(2, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(2, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // only the child has updated
            // the child tracker should be cancelled, but no the parent
            verifier(2, 2, 1);
            expect(activeUpdates[0].parentTracker.isCancelled, isTrue);
            expect(activeUpdates[0].parentTracker.parentTracker.isCancelled,
                isFalse);

            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // the child update will not be finished since proceeding sync setState
            // cancels it
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 1, 1)
                    ..componentDidUpdate = failOnShouldComponentUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: false);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update process both components, but not the vElement
            runIdle(completeAfterIdleDeadline(2));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is aware
            // of the processing parent update
            component.child.updateState(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(2, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(2, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(2, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // only the child has updated
            // the child tracker should be cancelled even tho shouldAbort
            // is false since the update was sync
            verifier(2, 2, 1);
            expect(activeUpdates[0].parentTracker.isCancelled, isTrue);
            expect(activeUpdates[0].parentTracker.parentTracker.isCancelled,
                isFalse);

            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
        });
        group('child update is async -', () {
          test('shouldAbort: true', () {
            // this parent should be executed, the child will start
            // but be cancelled after it finishes its update
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 1, 1)
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: true);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update process both components, but not the vElement
            runIdle(completeAfterIdleDeadline(2));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is aware
            // of the processing parent update
            component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(2, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(2, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(2, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 2);

            runIdle(aliveIdleDeadline());

            // parent forced to complete
            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // this parent should be executed, the child will not
            // as it will call the childs pending state setter
            component.updateStateIdle(
                new ComponentChildProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount
                  ..nestedComponentProps = (new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 2, 1, 1)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 2, 1, 1)
                    ..componentDidUpdate = expectComponentWillUpdate(1, 2, 1, 1)
                    ..componentWillUnmount = failOnComponentWillUnmount),
                shouldAbort: false);

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // let the update process both components, but not the vElement
            runIdle(completeAfterIdleDeadline(2));

            // the update should be queued
            // the rendered text should not have been be updated yet
            verifier(1, 1, 1);

            // when child updates it is aware
            // of the processing parent update
            component.child.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(2, 2, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(2, 2, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(2, 2, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount,
            );

            runIdle(aliveIdleDeadline());

            // parent forced to complete
            verifier(2, 2, 0);
          });
        });
      });
    });

    group('async child update followed by parent update -', () {
      group('child has started -', () {
        group('parent update is sync -', () {
          test('shouldAbort: true', () {
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: true);

            verifier(1, 1, 1);

            runIdle(completeIdleDeadline());

            // will use previous updates state setter
            component.updateState(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(2, 2, 1);
            expect(activeUpdates[0].isCancelled, isTrue);

            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: false);

            verifier(1, 1, 1);

            runIdle(completeIdleDeadline());

            // will use previous updates state setters
            component.updateState(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            // will be cancelled even tho shouldAbort is false since
            // the proceeding update was sync
            verifier(2, 2, 1);
            expect(activeUpdates[0].isCancelled, isTrue);

            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
        });
        group('parent update is async -', () {
          test('shouldAbort: true', () {
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: true);

            verifier(1, 1, 1);

            runIdle(completeIdleDeadline());

            component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 2, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 2, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(1, 1, 2);

            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: false);

            verifier(1, 1, 1);

            runIdle(completeIdleDeadline());

            component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 2, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 2, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(1, 1, 2);

            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
        });
      });

      group('child has not started -', () {
        group('parent update is sync -', () {
          test('shouldAbort: true', () {
            // should get cancelled by sync update
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: true);

            verifier(1, 1, 1);

            component.updateState(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(2, 2, 1);
            expect(activeUpdates[0].isCancelled, isTrue);
            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // should execute before sync update
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: false);

            verifier(1, 1, 1);

            component.updateState(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate = failOnShouldComponentUpdate
                  ..componentWillUpdate = failOnComponentWillUpdate
                  ..componentDidUpdate = failOnComponentDidUpdate
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(2, 2, 1);
            // it should still be cancelled even tho shouldAbort is false
            // since it had not started.
            expect(activeUpdates[0].isCancelled, isTrue);
            runIdle(aliveIdleDeadline());
            verifier(2, 2, 0);
          });
        });
        group('parent update is async -', () {
          test('shouldAbort: true', () {
            // should execute before sync update
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: true);

            verifier(1, 1, 1);

            component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 2, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 2, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(1, 1, 2);

            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
          test('shouldAbort: false', () {
            // should execute before sync update
            component.child.updateStateIdle(
                new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 1, 1, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount,
                shouldAbort: false);

            verifier(1, 1, 1);

            component.updateStateIdle(
              new ComponentChildProps()
                ..componentWillMount = failOnComponentWillMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..nestedComponentProps = (new TestComponentProps()
                  ..componentWillMount = failOnComponentWillMount
                  ..componentDidMount = failOnComponentDidMount
                  ..shouldComponentUpdate =
                      expectShouldComponentUpdate(1, 2, 2, 2)
                  ..componentWillUpdate = expectComponentWillUpdate(1, 2, 2, 2)
                  ..componentDidUpdate = expectComponentDidUpdate(1, 2, 2, 2)
                  ..componentWillUnmount = failOnComponentWillUnmount),
            );

            verifier(1, 1, 2);

            runIdle(aliveIdleDeadline());

            verifier(2, 2, 0);
          });
        });
      });
    });
  });
}
