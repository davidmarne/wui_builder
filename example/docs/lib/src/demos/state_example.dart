import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// StateExampleState is a class that contains the state
// of the component. In this case the state object contains
// a single integer, clickCount, gets incremented each time
// the button is clicked
class StateExampleState {
  int clickCount;
}

class StateExample extends SComponent<StateExampleState> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  StateExampleState getInitialState() => StateExampleState()..clickCount = 0;

  @override
  VNode render() => VButtonElement()
    ..text = 'Hello World x${state.clickCount}!'
    ..onClick = _onClick;

  // a click handler that calls set state to increment
  // state.clickCount when the button is clicked
  void _onClick(MouseEvent e) {
    setState((nextProps, prevState) =>
        StateExampleState()..clickCount = prevState.clickCount + 1);
  }
}
