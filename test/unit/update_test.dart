import 'package:test/test.dart';
import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'test_component.dart';

void main() {
  group('sync updates', () {
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
    });

    test('correct lifecycle is called and text is rendered', () {
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
  });
}
