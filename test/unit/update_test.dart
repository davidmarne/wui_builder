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
  group('updates -', () {
    DivElement host;
    TestComponent component;

    setUp(() {
      activeUpdates = [];
      pendingIdleId = null;
      host = new DivElement();
    });

    void verifier(String expectedRenderedText, int expectedNumPendingUpdates) {
      expect(host.children.length, 1);
      expect(host.children.first, component.ref);
      expect(host.children.first.text, expectedRenderedText);
      expect(activeUpdates.length, expectedNumPendingUpdates);
      // if any updates are pending the pendingIdleId should also be set
      expect(pendingIdleId, expectedNumPendingUpdates > 0 ? isNotNull : isNull);
    }

    group('nesting level 1 -', () {
      setUp(() {
        // renders a test component
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
        verifier(expectedText(1, 1), 0);
      });

      group('correct lifecycle is called and text is rendered -', () {
        test('sync', () {
          component.updateState(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // no update should have been queued
          // the rendered text should be updated
          verifier(expectedText(1, 2), 0);
        });

        test('async - shouldAbort: true', () {
          component.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText,
              shouldAbort: true);

          // the update should be queued
          // the rendered text should not have been be updated yet
          verifier(expectedText(1, 1), 1);

          // let the update process
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should be updated
          verifier(expectedText(1, 2), 0);
        });

        test('async - shouldAbort: false', () {
          component.updateStateIdle(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // the update should be queued
          // the rendered text should not have been be updated yet
          verifier(expectedText(1, 1), 1);

          // let the update process
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should be updated
          verifier(expectedText(1, 2), 0);
        });
      });

      group(
          'update is short circuited when shouldComponentUpdate returns false -',
          () {
        test('sync', () {
          component.updateState(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate =
                expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
            ..componentWillUpdate = failOnComponentWillUpdate
            ..componentDidUpdate = failOnComponentDidUpdate
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // no update should have been queued
          // the rendered text should not have been updated
          verifier(expectedText(1, 1), 0);
        });

        test('async - shouldAbort: true', () {
          component.updateStateIdle(
              new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
                ..componentWillUpdate = failOnComponentWillUpdate
                ..componentDidUpdate = failOnComponentDidUpdate
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText,
              shouldAbort: true);

          // the update should be queued
          // the rendered text should not have been be updated
          verifier(expectedText(1, 1), 1);

          // let the update finish
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should not have been be updated
          verifier(expectedText(1, 1), 0);
        });

        test('async - shouldAbort: false', () {
          component.updateStateIdle(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate =
                expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
            ..componentWillUpdate = failOnComponentWillUpdate
            ..componentDidUpdate = failOnComponentDidUpdate
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // the update should be queued
          // the rendered text should not have been be updated
          verifier(expectedText(1, 1), 1);

          // let the update finish
          runIdle(aliveIdleDeadline());

          // the update should be removed from the queue
          // the rendered text should not have been be updated
          verifier(expectedText(1, 1), 0);
        });
      });

      group('multiple set states -', () {
        test('sync', () {
          component.updateState(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // no update should have been queued
          // the rendered text should have been updated
          verifier(expectedText(1, 2), 0);

          component.updateState(new TestComponentProps()
            ..componentWillMount = failOnComponentWillMount
            ..componentDidMount = failOnComponentDidMount
            ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 2, 3)
            ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
            ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
            ..componentWillUnmount = failOnComponentWillUnmount
            ..child = propStateText);

          // no update should have been queued
          // the rendered text should have been updated again
          verifier(expectedText(1, 3), 0);
        });

        group('async - shouldAbort: true -', () {
          group('first update had started - ', () {
            test('second update is sync', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a sync update
              component.updateState(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText);

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            });

            test('second update is async', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // let the update start, but not process anything
              runIdle(completeIdleDeadline());

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a sync update
              component.updateStateIdle(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText);

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 2);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            });
          });

          group('first update had not started -', () {
            test('second update is sync', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a sync update
              component.updateState(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText);

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            }, skip: 'something to do with hasStarted not being true');

            test('second update is async', () {
              // this update should not be executed since shouldAbort is true
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: true);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a sync update
              component.updateStateIdle(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 1, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 3)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText);

              // the 2 updates should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 2);

              // let the updates finsh
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            });
          });
        });

        group('async - shouldAbort: false -', () {
          group('first update had started', () {
            test('second update is sync', () {});
            test('second update is async', () {});
          });

          group('first update had not started', () {
            test('second update is sync', () {});
            test('second update is async', () {});
          });
        });
      });

      group('update requeued if deadline has no time remaining -', () {
        test('shouldAbort: true', () {});
        test('shouldAbort: false', () {});
      });
    });

    group('nesting level 2 -', () {
      group('parent update followed by child update -', () {
        group('parent has started -', () {
          group('child update is sync -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
          group('child update is async -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
        });

        group('parent has not started -', () {
          group('child update is sync -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
          group('child update is async -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
        });
      });

      group('child update followed by parent update -', () {
        group('child has started -', () {
          group('parent update is sync -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
          group('parent update is async -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
        });

        group('child has not started -', () {
          group('parent update is sync -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
          group('parent update is async -', () {
            test('shouldAbort: true', () {});
            test('shouldAbort: false', () {});
          });
        });
      });
    });
  });
}
