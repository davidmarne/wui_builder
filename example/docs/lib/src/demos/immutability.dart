import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Immutability is the concept of never mutating the objects
// that drive your view. This means to move to the next state
// or pass new props your should create a new instance of your
// props/state object. In this example one button mutates the
// ChildProps and one creates button creates a new instance.
// Since Child implements shouldComponentUpdate to perform an
// equality check on the props, it will not update if the mutable
// button is clicked, but it will update if the immutable button is clicked.
//
// ChildProps is a class that contains the state
// of the component, which will be passed to the child
// components as props.
class ChildProps {
  int clickCount;
}

class ImmutabilityExample extends SComponent<ChildProps> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  ChildProps getInitialState() => ChildProps()..clickCount = 0;

  @override
  VNode render() => VDivElement()
    ..children = [
      VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      Child(state), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a new instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        ChildProps()..clickCount = prevState.clickCount + 1);
  }

  // _mutableUpdate mutates the current state object. This
  // will not cause the identity of the props object sent
  // to the child to change after this update
  void _mutableUpdate(MouseEvent e) {
    state.clickCount++;
    setState((nextProps, prevState) => state);
  }
}

class Child extends PComponent<ChildProps> {
  Child(ChildProps props) : super(props);

  // only update if the props have different identities
  // this will prevent the text from updating after
  // the parent performs _mutableUpdate
  @override
  bool shouldComponentUpdate(nextProps, nextState) => props != nextProps;

  @override
  VNode render() =>
      VDivElement()..text = 'props.clickCount: ${props.clickCount}';
}
