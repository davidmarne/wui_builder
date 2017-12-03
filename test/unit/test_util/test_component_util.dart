import 'package:test/test.dart';

// typedefs for lifecycle methods

typedef void TestComponentWillMount(int props, int state);
typedef void TestComponentDidMount(int props, int state);
typedef void TestComponentWillReceiveProps(int props, int state);
typedef bool TestShouldComponentUpdate(
    int props, int nextProps, int prevState, int nextState);
typedef void TestComponentWillUpdate(
    int props, int nextProps, int prevState, int nextState);
typedef void TestComponentDidUpdate(
    int prevProps, int nextProps, int prevState, int nextState);
typedef void TestComponentWillUnmount(int props, int state);

// functions that create async expects to guarentee
// a certain lifecycle function is called with the correct
// parameters.

TestComponentWillMount expectComponentWillMount(
        int expectedProps, int expectedState) =>
    expectAsync2((actualProps, actualState) {
      expect(actualProps, expectedProps);
      expect(actualState, expectedState);
    });

TestComponentDidMount expectComponentDidMount(
        int expectedProps, int expectedState) =>
    expectAsync2((actualProps, actualState) {
      expect(actualProps, expectedProps);
      expect(actualState, expectedState);
    });

TestComponentWillReceiveProps expectComponentWillReceiveProps(
        int expectedProps, int expectedState,
        {int count: 1}) =>
    expectAsync2((actualProps, actualState) {
      expect(actualProps, expectedProps);
      expect(actualState, expectedState);
    }, count: count);

TestShouldComponentUpdate expectShouldComponentUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {bool shouldUpdate: true, int count: 1}) =>
    expectAsync4(
        (actualPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(actualPrevProps, expectedPrevProps);
      expect(actualNextProps, expectedNextProps);
      expect(actualPrevState, expectedPrevState);
      expect(actualNextState, expectedNextState);
      return shouldUpdate;
    }, count: count);

TestComponentWillUpdate expectComponentWillUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {int count: 1}) =>
    expectAsync4(
        (actualPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(actualPrevProps, expectedPrevProps);
      expect(actualNextProps, expectedNextProps);
      expect(actualPrevState, expectedPrevState);
      expect(actualNextState, expectedNextState);
    }, count: count);

TestComponentDidUpdate expectComponentDidUpdate(int expectedPrevProps,
        int expectedNextProps, int expectedPrevState, int expectedNextState,
        {int count: 1}) =>
    expectAsync4(
        (actualPrevProps, actualNextProps, actualPrevState, actualNextState) {
      expect(actualPrevProps, expectedPrevProps);
      expect(actualNextProps, expectedNextProps);
      expect(actualPrevState, expectedPrevState);
      expect(actualNextState, expectedNextState);
    }, count: count);

TestComponentWillUnmount expectComponentWillUnmount(
        int expectedProps, int expectedState) =>
    expectAsync2((actualProps, actualState) {
      expect(actualProps, expectedProps);
      expect(actualState, expectedState);
    });

// functions that create async expects to guarentee
// a certain lifecycle function is never called

void failOnComponentWillMount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentWillMount');

void failOnComponentDidMount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentDidMount');

void failOnComponentWillUnmount(dynamic acutalProps, dynamic actualState) =>
    fail('failOnComponentWillUnmount');

bool failOnShouldComponentUpdate(dynamic actualPrevProps,
    dynamic actualNextProps, dynamic actualPrevState, dynamic actualNextState) {
  fail('failOnShouldComponentUpdate');
  return false;
}

void failOnComponentWillUpdate(dynamic actualPrevProps, dynamic actualNextProps,
        dynamic actualPrevState, dynamic actualNextState) =>
    fail('failOnComponentWillUpdate');

void failOnComponentDidUpdate(dynamic actualPrevProps, dynamic actualNextProps,
        dynamic actualPrevState, dynamic actualNextState) =>
    fail('failOnComponentDidUpdate');
