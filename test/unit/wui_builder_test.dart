import 'package:test/test.dart';
import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'test_component.dart';

void main() {
  group('sync updates', () {
    test('correct lifecycle is called and text is rendered', () {
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
        ..baseProps = 1
        ..child = propStateText);

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
        ..baseProps = 2
        ..child = propStateText);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 2));
    });

    test('update is short circuited when shouldComponentUpdate returns false',
        () {
      final host = new DivElement();
      final component = new TestComponent(new TestComponentProps()
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

      component.updateState(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate =
            expectShouldComponentUpdate(1, 1, 1, 2, shouldUpdate: false)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 2
        ..child = propStateText);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedText(1, 1));
    });

    test('context', () {
      final host = new DivElement();
      final component = new TestComponent(new TestComponentProps()
        ..componentWillMount = expectComponentWillMount(1, 1)
        ..componentDidMount = expectComponentDidMount(1, 1)
        ..shouldComponentUpdate = failOnShouldComponentUpdate
        ..componentWillUpdate = failOnComponentWillUpdate
        ..componentDidUpdate = failOnComponentDidUpdate
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 1
        ..context = 5
        ..child = propStateContextText);

      render(component, host);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedTextContext(1, 1, 5));

      component.updateState(new TestComponentProps()
        ..componentWillMount = failOnComponentWillMount
        ..componentDidMount = failOnComponentDidMount
        ..shouldComponentUpdate = expectShouldComponentUpdate(1, 1, 1, 2)
        ..componentWillUpdate = expectComponentWillUpdate(1, 1, 1, 2)
        ..componentDidUpdate = expectComponentDidUpdate(1, 1, 1, 2)
        ..componentWillUnmount = failOnComponentWillUnmount
        ..baseProps = 2
        ..context = 5
        ..child = propStateContextText);

      expect(host.children.length, 1);
      expect(host.children.first.text, expectedTextContext(1, 2, 5));
    });
  });
}
