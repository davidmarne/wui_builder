import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

void expectRenderedOutput(Element host, int numExpected) {
  expect(host.children.length, 1);
  expect(host.children.first.children.length, numExpected);
  for (var i = 0; i < numExpected; i++) {
    expect(host.children.first.children[i].text, '$i');
  }
}

class AddRemoveChildrenComponent extends Component<int, int> {
  AddRemoveChildrenComponent(int props) : super(props);

  @override
  int getInitialState() => props;

  void updateState(int next) {
    setState((prevProps, prevState) => next);
  }

  void updateStateIdle(int next, {bool shouldAbort: false}) =>
      setStateOnIdle((prevProps, prevState) => next, shouldAbort: shouldAbort);

  // render state again so we can test pausing between the 2nd & 3rd node
  @override
  VNode render() => new VDivElement()
    ..children = new List<VDivElement>.generate(
        state, (i) => new VDivElement()..text = '$i');
}
