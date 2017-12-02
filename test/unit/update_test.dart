import 'dart:html';
import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/update_queue.dart';
import 'package:mockito/mockito.dart';
import 'test_component.dart';

typedef double MockTimeRemaining();

class MockIdleDeadline implements IdleDeadline {
  MockTimeRemaining mockTimeRemaining;

  MockIdleDeadline(MockTimeRemaining this.mockTimeRemaining);

  @override
  double timeRemaining() => mockTimeRemaining();

  @override
  bool get didTimeout => false;
}

IdleDeadline aliveIdleDeadline() {
  final mock = new MockIdleDeadline(() => 2.0);
  return mock;
}

IdleDeadline completeIdleDeadline() {
  final mock = new MockIdleDeadline(() => 0.1);
  return mock;
}

IdleDeadline completeAfterIdleDeadline(int after) {
  int count = 0;
  final mock = new MockIdleDeadline(() {
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

              // idle update will be in the queue but cancelled
              verifier(expectedText(1, 3), 1);
              expect(activeUpdates[0].isCancelled, isTrue);
              runIdle(aliveIdleDeadline());

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

              // run an async update
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
          group('first update had started - ', () {
            test('second update is sync', () {
              // this update should be executed since shouldAbort is false
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // let the update start, and process the initial call to update component
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a sync update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateState(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 2, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
                ..componentWillUnmount = failOnComponentWillUnmount
                ..child = propStateText);

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            });

            test('second update is async', () {
              // this update should be executed since shouldAbort is false
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate =
                        expectShouldComponentUpdate(1, 1, 1, 2)
                    ..componentWillUpdate =
                        expectComponentWillUpdate(1, 1, 1, 2)
                    ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // let the update start, and process the initial call to update component
              runIdle(completeAfterIdleDeadline(1));

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run a async update
              // it will run with the proceeding state twice
              // since completeIdleDeadline will cause it to bail
              // before running setState with only the previous idle update's state
              component.updateStateIdle(new TestComponentProps()
                ..componentWillMount = failOnComponentWillMount
                ..componentDidMount = failOnComponentDidMount
                ..shouldComponentUpdate =
                    expectShouldComponentUpdate(1, 1, 2, 3)
                ..componentWillUpdate = expectComponentWillUpdate(1, 1, 2, 3)
                ..componentDidUpdate = expectComponentDidUpdate(1, 1, 2, 3)
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
              // this update should not be executed even tho shouldAbort is false
              // since it had not started
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: false);

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

              // idle update will be in the queue but cancelled
              verifier(expectedText(1, 3), 1);
              expect(activeUpdates[0].isCancelled, isTrue);
              runIdle(aliveIdleDeadline());

              // no updates should remain queued
              // the rendered text should have been updated, representing 2 updates
              verifier(expectedText(1, 3), 0);
            });

            test('second update is async', () {
              // this update should not be executed even tho shouldAbort is false
              // since it had not started
              component.updateStateIdle(
                  new TestComponentProps()
                    ..componentWillMount = failOnComponentWillMount
                    ..componentDidMount = failOnComponentDidMount
                    ..shouldComponentUpdate = failOnShouldComponentUpdate
                    ..componentWillUpdate = failOnComponentWillUpdate
                    ..componentDidUpdate = failOnComponentDidUpdate
                    ..componentWillUnmount = failOnComponentWillUnmount
                    ..child = propStateText,
                  shouldAbort: false);

              // the update should be queued
              // the rendered text should not have been be updated yet
              verifier(expectedText(1, 1), 1);

              // run an async update
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
      });
    });

    group('nesting level 2 -', () {
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
          ..child = nestedComponent(new TestComponentProps()
            ..componentWillMount = expectComponentWillMount(1, 1)
            ..componentDidMount = expectComponentDidMount(1, 1)
            ..shouldComponentUpdate = failOnShouldComponentUpdate
            ..componentWillUpdate = failOnComponentWillUpdate
            ..componentDidUpdate = failOnComponentDidUpdate
            ..componentWillUnmount = failOnComponentWillUnmount
            ..baseProps = 1
            ..child = propStateText));

        render(component, host);
        verifier(expectedTextNested(1, 1, 1, 1), 0);
      });
      group('async parent update followed by child update -', () {
        group('parent has started -', () {
          group('parent update has called update on child already -', () {
            group('child update is sync -', () {
              test('shouldAbort: true', () {
                // the parent should update and child should be updated twice
                // both child updates will contain the most recent state
                // since the parent didn't call the state setter at the time of
                // sync update
                // component.updateStateIdle(
                //     new TestComponentProps()
                //       ..componentWillMount = failOnComponentWillMount
                //       ..componentDidMount = failOnComponentDidMount
                //       ..shouldComponentUpdate =
                //           expectShouldComponentUpdate(1, 1, 1, 2)
                //       ..componentWillUpdate =
                //           expectComponentWillUpdate(1, 1, 1, 2)
                //       ..componentDidUpdate =
                //           expectComponentDidUpdate(1, 1, 1, 2)
                //       ..componentWillUnmount = failOnComponentWillUnmount
                //       ..child = nestedComponent(new TestComponentProps()
                //         ..componentWillMount = failOnComponentWillMount
                //         ..componentDidMount = failOnComponentDidMount
                //         ..shouldComponentUpdate =
                //             expectShouldComponentUpdate(1, 1, 1, 1)
                //         ..componentWillUpdate =
                //             expectComponentWillUpdate(1, 1, 1, 1)
                //         ..componentDidUpdate =
                //             expectComponentDidUpdate(1, 1, 1, 1)
                //         ..componentWillUnmount = failOnComponentWillUnmount
                //         ..child = propStateText),
                //     shouldAbort: true);
              });
              test('shouldAbort: false', () {});
            });
            group('child update is async -', () {
              test('shouldAbort: true', () {});
              test('shouldAbort: false', () {});
            });
          });
          group('parent update has not called update on child already -', () {
            group('child update is sync -', () {
              test('shouldAbort: true', () {
                // the parent should update and child should be updated twice
                // both child updates will contain the most recent state
                // since the parent didn't call the state setter at the time of
                // sync update
                // component.updateStateIdle(
                //     new TestComponentProps()
                //       ..componentWillMount = failOnComponentWillMount
                //       ..componentDidMount = failOnComponentDidMount
                //       ..shouldComponentUpdate =
                //           expectShouldComponentUpdate(1, 1, 1, 2)
                //       ..componentWillUpdate =
                //           expectComponentWillUpdate(1, 1, 1, 2)
                //       ..componentDidUpdate =
                //           expectComponentDidUpdate(1, 1, 1, 2)
                //       ..componentWillUnmount = failOnComponentWillUnmount
                //       ..child = nestedComponent(new TestComponentProps()
                //         ..componentWillMount = failOnComponentWillMount
                //         ..componentDidMount = failOnComponentDidMount
                //         ..shouldComponentUpdate =
                //             expectShouldComponentUpdate(1, 1, 1, 2)
                //         ..componentWillUpdate =
                //             expectComponentWillUpdate(1, 1, 1, 2)
                //         ..componentDidUpdate =
                //             expectComponentDidUpdate(1, 1, 1, 2)
                //         ..componentWillUnmount = failOnComponentWillUnmount
                //         ..child = propStateText),
                //     shouldAbort: true);
              });
              test('shouldAbort: false', () {});
            });
            group('child update is async -', () {
              test('shouldAbort: true', () {});
              test('shouldAbort: false', () {});
            });
          });
        });

        group('async parent has not started -', () {
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

      group('async child update followed by parent update -', () {
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

        group('async child has not started -', () {
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
