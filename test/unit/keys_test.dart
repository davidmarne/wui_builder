import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

import 'test_util/keys_test_component.dart';
import 'test_util/testbed.dart';

void main() {
  group('keys test -', () {
    DivElement host;
    KeyTestComponent component;
    Iterable<KeyedComponent> childrenComponents() =>
        ((component.child as VElement).children as Iterable<KeyedComponent>);

    void verifier(Iterable<String> keys, Iterable<int> stateValues) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(host, keys, stateValues);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();
    });

    void initialRender(Iterable<String> keys, bool isKeyed) {
      // renders a test component
      component = new KeyTestComponent(
        new KeyTestProps()
          ..dataKeys = keys
          ..isKeyed = isKeyed,
      );

      render(component, host);
      // all should have initial state of 0
      verifier(keys, new List<int>.generate(keys.length, (_) => 0));
    }

    group('sync - ', () {
      test(
          'change key should reset to initial state and new element should be made',
          () {
        final startKey = 'startKey';
        final endKey = 'endKey';
        initialRender([startKey], true);

        // update the state on the only child
        childrenComponents().first.setState((_, __) => 1);
        verifier([startKey], [1]);

        // rekey the component, which should cause the state to be reset
        // to the initial state
        component.setState((_, __) => [endKey]);
        verifier([endKey], [0]);
      });
      group('swap 2 immediate siblings - ', () {
        test('keyed - state and original element should move', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          initialRender([keyA, keyB], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          verifier([keyA, keyB], [1, 0]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyB, keyA]);
          verifier([keyB, keyA], [0, 1]);
        });
        test('non-keyed - state and original elment should stay in same spot',
            () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          initialRender([keyA, keyB], false);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          verifier([keyA, keyB], [1, 0]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyB, keyA]);
          verifier([keyB, keyA], [1, 0]);
        });
      });
      group('swap 2 distant siblings - ', () {
        test('keyed - state and original element should move', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB, keyC], [1, 0, 2]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyC, keyB, keyA]);
          verifier([keyC, keyB, keyA], [2, 0, 1]);
        });
        test('non-keyed - state and original elment should stay in same spot',
            () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], false);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB, keyC], [1, 0, 2]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyC, keyB, keyA]);
          verifier([keyC, keyB, keyA], [1, 0, 2]);
        });
      });
      group('add child before last element - ', () {
        test('keyed - state and original element should move to end', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB], [1, 2]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyA, keyC, keyB]);
          verifier([keyA, keyC, keyB], [1, 0, 2]);
        });
        test(
            'non-keyed - new state and element should be created for last element',
            () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB], false);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB], [1, 2]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyA, keyC, keyB]);
          verifier([keyA, keyC, keyB], [1, 2, 0]);
        });
      });
      group('add child before first element - ', () {
        test('keyed - state and original element should move to end', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB], [1, 2]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyC, keyA, keyB]);
          verifier([keyC, keyA, keyB], [0, 1, 2]);
        });
        test(
            'non-keyed - new state and element should be created for last element',
            () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB], false);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().last.setState((_, __) => 2);
          verifier([keyA, keyB], [1, 2]);

          // rekey the component, which should cause the state to be reset
          // to the initial state
          component.setState((_, __) => [keyC, keyA, keyB]);
          verifier([keyC, keyA, keyB], [1, 2, 0]);
        });
      });
      group('remove keyed elements - ', () {
        test('first', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyB, keyC]);
          verifier([keyB, keyC], [2, 3]);
        });
        test('middle', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyA, keyC]);
          verifier([keyA, keyC], [1, 3]);
        });
        test('last', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyA, keyB]);
          verifier([keyA, keyB], [1, 2]);
        });
        test('first two', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyC]);
          verifier([keyC], [3]);
        });
        test('last two', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyA]);
          verifier([keyA], [1]);
        });
        test('first and last', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyB]);
          verifier([keyB], [2]);
        });
        test('all', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => []);
          verifier([], []);
        });
        test('first and swap', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyC, keyB]);
          verifier([keyC, keyB], [3, 2]);
        });
        test('middle and swap', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyC, keyA]);
          verifier([keyC, keyA], [3, 1]);
        });
        test('last and swap', () {
          final keyA = 'keyA';
          final keyB = 'keyB';
          final keyC = 'keyC';
          initialRender([keyA, keyB, keyC], true);

          // update the state on the only child
          childrenComponents().first.setState((_, __) => 1);
          childrenComponents().elementAt(1).setState((_, __) => 2);
          childrenComponents().last.setState((_, __) => 3);
          verifier([keyA, keyB, keyC], [1, 2, 3]);

          // // rekey the component, which should cause the state to be reset
          // // to the initial state
          component.setState((_, __) => [keyB, keyA]);
          verifier([keyB, keyA], [2, 1]);
        });
      });
    });
  });
}
