import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';

void expectRenderedOutput(Element host, bool enabled, int numExpectedClicks) {
  expect(host.children.length, 1);
  expect(host.children.first.text, _expectedText(enabled, numExpectedClicks));
}

String _expectedText(bool enabled, int numExpectedClicks) =>
    '$enabled $numExpectedClicks';

class EventHandlerTestState {
  bool clickEnabled;
  int count;
}

class EventHandlerTestComponent extends SComponent<EventHandlerTestState> {
  @override
  EventHandlerTestState getInitialState() => new EventHandlerTestState()
    ..clickEnabled = true
    ..count = 0;

  void updateClickEnabled() => setState((_, prev) => new EventHandlerTestState()
    ..clickEnabled = !prev.clickEnabled
    ..count = prev.count);

  void _onClick(Event _) => setState((_, prev) => new EventHandlerTestState()
    ..clickEnabled = prev.clickEnabled
    ..count = prev.count + 1);

  @override
  VNode render() => state.clickEnabled
      ? (new VDivElement()
        ..onClick = _onClick
        ..text = _expectedText(state.clickEnabled, state.count))
      : (new VDivElement()
        ..text = _expectedText(state.clickEnabled, state.count));
}
