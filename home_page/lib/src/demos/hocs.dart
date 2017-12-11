import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// High Order Components (HOCs) wrap other components
// to provide additional functionality. In this case
// PureHOC wraps another component, and only updates
// if the props of the child change. HOCs are generally
// used when writing functional components, but as this
// example shows, they can be written as classes as well.
class PureHOC extends PComponent<Component> {
  PureHOC(Component props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, __) => props.props != nextProps.props;

  @override
  VNode render() => props;
}

// ChildProps is a class that contains the state
// of the component, which will be passed to the child
// components as props.
class ChildProps {
  int clickCount;
}

class HOCExample extends SComponent<ChildProps> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  ChildProps getInitialState() => new ChildProps()..clickCount = 0;

  @override
  VNode render() => new VDivElement()
    ..children = [
      new VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      new VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      new VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      new PureHOC(new Child(state)), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a new instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        new ChildProps()..clickCount = prevState.clickCount + 1);
  }

  // _mutableUpdate mutates the current state object. This
  // will not cause the identity of the props object sent
  // to the child to change after this update
  void _mutableUpdate(MouseEvent e) {
    state.clickCount++;
    setState((nextProps, prevState) => state);
  }
}

// Note, unlike the immutability example, this component does not
// implment shouldComponentUpdate. The HOC provides that shouldComponentUpdate
// check for Child.
class Child extends PComponent<ChildProps> {
  Child(ChildProps props) : super(props);

  @override
  VNode render() =>
      new VDivElement()..text = 'props.clickCount: ${props.clickCount}';
}
