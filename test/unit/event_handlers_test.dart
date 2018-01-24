import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';

import 'test_util/event_handlers_test_component.dart';
import 'test_util/testbed.dart';

void main() {
  group('keys test -', () {
    DivElement host;
    EventHandlerTestComponent component;
    Iterable<CheckBoxChildComponent> childrenComponents() =>
        ((component.child as VElement).children
            as Iterable<CheckBoxChildComponent>);

    void verifier(Iterable<String> keys, Iterable<bool> checkedValues) {
      expect(host.children.first, component.ref);
      expectRenderedOutput(host, keys, checkedValues);
    }

    setUp(() {
      setUpTestbed();
      host = new DivElement();
    });

    void initialRender(Iterable<String> keys, bool isKeyed) {
      // renders a test component
      component = new EventHandlerTestComponent(
        new EventHandlerTestProps()
          ..dataKeys = keys
          ..isKeyed = isKeyed,
      );

      render(component, host);
      // all should have initial state of 0
      verifier(keys, new List<bool>.generate(keys.length, (_) => false));
    }

    group(
        'swap siblings and confirm events are handled correctly after swap - ',
        () {
      test('keyed - state and original element should move', () async {
        final keyA = 'keyA';
        final keyB = 'keyB';
        initialRender([keyA, keyB], true);

        // update the state on the last child
        (childrenComponents().last.child as VElement).children.last.ref.click();

        verifier([keyA, keyB], [false, true]);

        // rekey the component, which should cause the state to be reset
        // to the initial state
        component.setState((_, __) => [keyB, keyA]);
        verifier([keyB, keyA], [true, false]);

        // update the state on the first child to make sure it changes
        // the checked state of the correct child
        (childrenComponents().first.child as VElement)
            .children
            .last
            .ref
            .click();

        verifier([keyB, keyA], [false, false]);

        // update the state on the last child to make sure it changes
        // the checked state of the correct child
        (childrenComponents().last.child as VElement).children.last.ref.click();

        verifier([keyB, keyA], [false, true]);
      });
      test('non-keyed - state and original elment should stay in same spot',
          () async {
        final keyA = 'keyA';
        final keyB = 'keyB';
        initialRender([keyA, keyB], false);

        // update the state on the last child
        (childrenComponents().last.child as VElement).children.last.ref.click();

        verifier([keyA, keyB], [false, true]);

        // rekey the component, which should cause the state to be reset
        // to the initial state
        component.setState((_, __) => [keyB, keyA]);
        verifier([keyB, keyA], [false, true]);

        // update the state on the first child to make sure it changes
        // the checked state of the correct child
        (childrenComponents().first.child as VElement)
            .children
            .last
            .ref
            .click();

        verifier([keyB, keyA], [true, true]);

        // update the state on the last child to make sure it changes
        // the checked state of the correct child
        (childrenComponents().last.child as VElement).children.last.ref.click();

        verifier([keyB, keyA], [true, false]);
      });
    });
  });
}
