import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/src/wui_builder/vnode.dart' show VNodeTypes;

import 'test_util/change_child_type.dart';

void main() {
  test('change children types of component - all permutations', () {
    final component = new ChangeChildTypeComponent();
    final host = new DivElement();

    render(component, host);

    expectRenderedOutput(host, VNodeTypes.text);

    // text -> component
    component.updateState(VNodeTypes.component);
    expectRenderedOutput(host, VNodeTypes.component);

    // component -> text
    component.updateState(VNodeTypes.text);
    expectRenderedOutput(host, VNodeTypes.text);

    // text -> iterable
    component.updateState(VNodeTypes.iterable);
    expectRenderedOutput(host, VNodeTypes.iterable);

    // iterable -> text
    component.updateState(VNodeTypes.text);
    expectRenderedOutput(host, VNodeTypes.text);

    // text -> element
    component.updateState(VNodeTypes.element);
    expectRenderedOutput(host, VNodeTypes.element);

    // element -> component
    component.updateState(VNodeTypes.component);
    expectRenderedOutput(host, VNodeTypes.component);

    // component -> iterable
    component.updateState(VNodeTypes.iterable);
    expectRenderedOutput(host, VNodeTypes.iterable);

    // iterable -> component
    component.updateState(VNodeTypes.component);
    expectRenderedOutput(host, VNodeTypes.component);

    // component -> element
    component.updateState(VNodeTypes.element);
    expectRenderedOutput(host, VNodeTypes.element);

    // element -> iterable
    component.updateState(VNodeTypes.iterable);
    expectRenderedOutput(host, VNodeTypes.iterable);

    // iterable -> element
    component.updateState(VNodeTypes.element);
    expectRenderedOutput(host, VNodeTypes.element);

    // element -> text
    component.updateState(VNodeTypes.text);
    expectRenderedOutput(host, VNodeTypes.text);
  });
}
