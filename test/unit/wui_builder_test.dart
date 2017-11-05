import 'package:test/test.dart';
import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'test_component.dart';

void main() {
  group('async updates', () {
    test('cancels pending update from the same component', () {
      // queue an update
      // expect
      // queue a second update from the same component
      final host = new DivElement();
      final component = new TestComponent(new TestComponentProps()
        ..componentWillMount = expectComponentWillMount(1, 1)
        ..componentDidMount = expectComponentDidMount(1, 1)
        ..shouldComponentUpdate = failOnShouldComponentUpdate
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 1);

      render(component, host);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 1));

      component.updateState(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 2);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 2));
    });

    test('parent update cancels child update', () {});

    test('cancelled update does not update parent, state, or null state setter',
        () {});

    test('', () {});
  });
}
